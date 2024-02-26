const fs = require("fs");
const path = require("path");
const { configHelp } = require("./helpText");

const config = (userArgs) => {
  // Different functionality depending on the flags issued
  switch (userArgs[1]) {
    case undefined:
      console.log(
        "The 'config' command requires an option to be specified. Try 'config --help'"
      );
      break;

    case "--help":
      console.log(configHelp);
      break;

    case "--status":
      // Note** Should this be the same as initStatus?
      configStatus();
      break;

    case "--show":
      configShow();
      break;

    case "--reset":
      break;

    case "--set":
      // Checking to make sure <option> and <value> are specified.
      if (userArgs[2] == undefined || userArgs[3] == undefined)
        console.log(
          "An additional option must be specified. Use 'bitbase token --set <option> <value>'."
        );
      else {
      }
      break;

    default:
      console.log(
        `'${userArgs.join()}' is not a valid command. Try 'config --help'`
      );
  }
};

// config --status
const configStatus = () => {
  let status = "";

  status += fs.existsSync(path.join(__dirname, "..", "logs"))
    ? "Directories are initialized. "
    : "Directories are NOT initialized. ";

  status +=
    fs.existsSync(path.join(__dirname, "..", "config.json")) &&
    fs.existsSync(path.join(__dirname, "..", "users.json"))
      ? "Files are initialized."
      : "Files are NOT initialized.";

  console.log(status);
};

// config --show
configShow = () => {
  let configuration = {};
  try {
    const configFile = fs.readFileSync("./json/config.json", "utf8");
    configuration = JSON.parse(configFile);
    console.log("Current configuration settings:\n", configuration);
  } catch (err) {
    console.error("Error loading configuration: ", err);
  }
};

module.exports = config;
