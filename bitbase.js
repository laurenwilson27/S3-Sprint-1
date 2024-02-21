// 'node' process.argv[0]
// 'path/to/bitbase.js' process.argv[1]
// 'userArgs1' process.argv[2]: First CL argument.
const fs = require("fs");

const { initBit } = require("./commands/initBit.js");
const { configBit } = require("./commands/onfigBit.js");
const { tokenBit } = require("./commands/tokenBit.js");

const userArgs = process.argv.slice(2);

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
