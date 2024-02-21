const fs = require("fs");
const fsPromises = fs.promises;
const path = require("path");

const init = (userArgs) => {
  // Different functionality depending on the flags issued
  switch (userArgs[1]) {
    case "--status":
      break;
    default:
      console.log(
        `'${userArgs.join()}' is not a valid command. Try 'init --help'`
      );
  }
};

// init --status
const initStatus = () => {
  let status = "";
  status +=
    fs.existsSync(path.join(__dirname, "logs")) &&
    fs.existsSync(path.join(__dirname, "help"))
      ? "Directories are initialized. "
      : "Directories are NOT initialized. ";

  console.log(status);
};

module.exports = init;
