const fs = require("fs");
const crypto = require("crypto"); // Built-in crypto package
const path = require("path");
const { tokenHelp } = require("./helpText");

const { DateTime } = require("luxon");

const token = (userArgs) => {
  const userFile = path.join(__dirname, "..", "users.json");
  // Check that the users.json file exists before we try anything
  if (!fs.existsSync(userFile))
    console.log(
      "User json file does not exist, and is required to handle tokens. Please use 'bitbase init --all' first."
    );
  else {
    // Load the users.json file into an object
    // This could cause memory issues if there were a very large number of users, but it should be fine for this use case.
    try {
      let data = fs.readFileSync(userFile, "utf-8");

      let users = JSON.parse(data);
      // Different functionality depending on the flags issued
      switch (userArgs[1]) {
        case undefined:
          console.log(
            "The 'token' command requires an option to be specified. Try 'bitbase token --help'"
          );
          break;

        case "--help":
          console.log(tokenHelp);
          break;

        case "--count":
          console.log(`There are currently ${users.length} users.`);
          break;

        case "--new":
          // Ensure additional options are specified
          if (userArgs[2] == undefined)
            console.log(
              "A username must be specified. Use 'bitbase token --new <username>'."
            );
          else {
            // Generate a new token hash
            const hash = crypto
              .createHash("md5") // Create a Hash oject
              .update(userArgs[2]) // Set the data being hashed by the object to the username
              .digest("hex"); // Return the digest in hexadecimal text format

            // Create the user object
            const newToken = {
              username: userArgs[2],
              token: hash,
              created: DateTime.now().toISO(),
              // expiry: DateTime.now().plus({ days: 3 }).toISO(),
              // An expiry time doesn't quite seem to make sense for a user, but the commented line above would include one
            };

            // Add this object to the users list...
            users.push(newToken);

            // ...and save it.
            fs.writeFileSync(userFile, JSON.stringify(users));

            console.log(`User '${userArgs[2]}' was successfully created.`);
          }
          break;

        default:
          console.log(
            `'${userArgs.join()}' is not a valid command. Try 'token --help'`
          );
      }
    } catch (e) {
      console.error("Error occurred when handling users.json");
    }
  }
};

module.exports = token;
