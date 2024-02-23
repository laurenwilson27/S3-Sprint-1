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
  const yearFolder = path.join(__dirname, "logs", String(d.getFullYear()));
  const monthFolder = path.join(yearFolder, String(d.getMonth() + 1));
  const dayFolder = path.join(monthFolder, String(d.getDate()));
  try {
      if (!fs.existsSync(yearFolder)) {
          fs.mkdirSync(yearFolder, { recursive: true });
      }
      if (!fs.existsSync(monthFolder)) {
          fs.mkdirSync(monthFolder, { recursive: true });
      }
      if (!fs.existsSync(dayFolder)) {
          fs.mkdirSync(dayFolder, { recursive: true });
      }
      if (userArgs === "error") {
          fs.appendFile(path.join(dayFolder, 'error_log.txt'), `Invalid Input: ${userArgs} at ${d}\n`, (err) => {
          if(err) {
              console.error(err);
          }
      });
      } else {
          fs.appendFile(path.join(dayFolder, 'log.txt'), `User Input: ${userArgs} at ${d}\n`, (err) => {
          if(err) {
              console.error(err);
          }
          });
      }
  } catch (err) {
      console.error(err);
  }
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
    try {
      const helpText = fs.readFileSync("./help.txt", "utf8");
      console.log(helpText);
    } catch (error) {
      console.error("Error reading help file: ", error.message);
    }
    myEmitter.emit("route", "error");
    break;
}

module.exports = userArgs;
