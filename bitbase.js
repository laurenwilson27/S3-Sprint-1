// 'node' process.argv[0]
// 'path/to/bitbase.js' process.argv[1]
// 'userArgs1' process.argv[2]: First CL argument.

const fs = require("fs");
const { initBit } = require("./initBit.js");
const { configBit } = require("./configBit.js");
const { tokenBit } = require("./tokenBit.js");
const path = require("path");
const myEmitter = require("./events.js");
const userArgs = process.argv.slice(2);
const port = 3000;

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
