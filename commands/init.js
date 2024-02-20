const init = (userArgs) => {
  // Different functionality depending on the flags issued
  switch (userArgs[1]) {
    default:
      console.log(
        `'${userArgs.join(" ")}' is not a valid command. Try 'init --help'`
      );
  }
};

module.exports = init;
