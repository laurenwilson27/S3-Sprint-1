// 'node' process.argv[0]
// 'path/to/bitbase.js' process.argv[1]
// 'userArgs1' process.argv[2]: First CL argument.
const fs = require("fs");

const initBit = require("./commands/initBit.js");
const { configBit } = require("./commands/configBit.js");
const { tokenBit } = require("./commands/tokenBit.js");
const { fullHelp } = require("./commands/helpText.js");

// Global constants containing the default configuration
global.DEFAULT_CONFIG = {};
global.DEFAULT_USERS = [];

const userArgs = process.argv.slice(2);

switch (userArgs[0]) {
  case "--help":
  case "h":
    console.log(fullHelp);
    break;
  case "init":
  case "i":
    initBit(userArgs);
    break;
  case "config":
  case "c":
    configBit();
    break;
  case "token":
  case "t":
    tokenBit();
    break;
  default:
    console.log(
      "Unknown command. Please enter bitbase --help or --h for help."
    );
    break;
}
