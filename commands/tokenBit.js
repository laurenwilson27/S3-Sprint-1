const fs = require("fs");
const crypto = require("crypto"); // Built-in crypto package
const path = require("path");
const { tokenHelp } = require("./helpText");

const { DateTime } = require("luxon");

const tokenBit = (userArgs) => {
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

        // New user command
        case "--new":
          // Function which searches the provided user list for a given username
          const getIndexByUser = (username) => {
            // -1 is returned when findIndex() cannot find a match
            return users.findIndex((user) => user.username == username);
          };

          // Ensure additional options are specified
          if (userArgs[2] == undefined)
            console.log(
              "A username must be specified. Use 'bitbase token --new <username>'."
            );
          // Check if a user by the given name exists before continuing
          else if (getIndexByUser(users, userArgs[2]) > -1)
            console.log(`A user named ${userArgs[2]} already exists.`);
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

        // Update user command
        case "--upd":
          // Ensure additional options are specified
          if (
            userArgs[2] == undefined ||
            userArgs[3] == undefined ||
            userArgs[4] == undefined
          )
            console.log(
              "Additional options must be specified. Try 'bitbase token --help"
            );
          else {
            let userIndex = getIndexByUser(users, userArgs[3]);
            // If the user doesn't exist, show a message
            if (userIndex == -1)
              console.log(
                `Cannot update user ${userArgs[3]}, as it does not exist.`
              );
            else {
              // User exists, behaviour depends on if 'e' or 'p' was specified
              switch (userArgs[2]) {
                case "e":
                  // Set the user's email value
                  users[userIndex].email = userArgs[4];

                  // Save the updated user data
                  fs.writeFileSync(userFile, JSON.stringify(users));

                  console.log(`User '${userArgs[3]}' email has been updated.`);
                  break;

                case "p":
                  // Set the user's phone number value
                  users[userIndex].phoneNum = userArgs[4];
                  // Save the updated user data
                  fs.writeFileSync(userFile, JSON.stringify(users));

                  console.log(
                    `User '${userArgs[3]}' phone number has been updated.`
                  );
                  break;

                default:
                  // Neither was specified
                  console.log(
                    `'${userArgs.join()}' is not a valid command. Try 'bitbase token --help'`
                  );
              }
            }
          }
          break;

        // Search for user command
        case "--search":
          // Ensure additional options are specified
          if (
            userArgs[2] == undefined ||
            userArgs[3] == undefined ||
            userArgs[4] == undefined
          )
            console.log(
              "Additional options must be specified. Try 'bitbase token --help"
            );
          else {
            let searchResult;

            // Behaviour here depends on the option specified
            switch (userArgs[3]) {
              case "u": //Username search
                break;
            }
          }
          break;

        default:
          console.log(
            `'${userArgs.join()}' is not a valid command. Try 'bitbase token --help'`
          );
      }
    } catch (e) {
      console.error("Error occurred when handling users.json");
    }
  }
};

const getUserByName = () => {};

module.exports = { tokenBit };
