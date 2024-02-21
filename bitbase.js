// 'node' process.argv[0]
// 'path/to/bitbase.js' process.argv[1]
// 'userArgs1' process.argv[2]: First CL argument.

const fs = require("fs");
const { initBit } = require("./initBit.js");
const { configBit } = require("./configBit.js");
const { tokenBit } = require("./tokenBit.js");
const path = require("path");
const EventEmitter = require("events");
class MyEmitter extends EventEmitter {};
const myEmitter = new MyEmitter();
const userArgs = process.argv.slice(2);
const port = 3000;

myEmitter.on("route", (userArgs) => {
  console.log(`User Input: ${userArgs}`);
  const d = new Date();
  if(!fs.existsSync(path.join(__dirname, "logs"))) {
    fs.mkdirSync(path.join(__dirname, "logs"));
  }
  if(!fs.existsSync(path.join(__dirname, "logs", String(d.getFullYear())))) {
    fs.mkdirSync(path.join(__dirname, "logs", String(d.getFullYear())));
  }
  fs.appendFile(path.join(__dirname, "logs", String(d.getFullYear()), "log.txt"), `User Input: ${userArgs} at ${d}\n`, (err) => {
    if(err) {
      console.error(err);
    }
  });
});

switch (userArgs[0]) {
  case "--help":
  case "--h":
    try {
      const helpText = fs.readFileSync("./help.txt", "utf8");
      console.log(helpText);
    } catch (error) {
      console.error("Error reading help file: ", error.message);
    }
    break;
  case "init":
  case "i":
    initBit();
    myEmitter.emit("route", "init");
    break;
  case "config":
  case "c":
    configBit();
    myEmitter.emit("route", "config");
    break;
  case "token":
  case "t":
    tokenBit();
    myEmitter.emit("route", "token");
    break;
  default:
    console.log(
      "Unknown command. Please enter bitbase --help or --h for help."
    );
    myEmitter.emit("route", "error");
    break;
}

module.exports = { userArgs, myEmitter, port };
