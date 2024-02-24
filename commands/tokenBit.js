const fs = require("fs");
const crypto = require("crypto"); // Built-in crypto package
const path = require("path");
const { tokenHelp } = require("./helpText");

const { DateTime } = require("luxon");

const USER_FILE = path.join(__dirname, "..", "users.json");

const tokenBit = (userArgs) => {
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
      // TODO: Move user creation to an independant function
      // ==>

      // Ensure additional options are specified
      if (userArgs[2] == undefined)
        console.log(
          "A username must be specified. Use 'bitbase token --new <username>'."
        );
      else {
        const newUser = addNewUser(userArgs[2]);
        if (newUser.status == "ok")
          console.log(
            `User '${username}' was successfully created. Token: ` +
              newUser.token
          );
        else if (newUser.status == "error")
          console.error("Error creating new user: " + newUser.message);
      }

      // <==
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
        // Behaviour depends on if 'e' or 'p' was specified
        switch (userArgs[2]) {
          case "e":
            setUserEmail(userArgs[3], userArgs[4]);
            break;

          case "p":
            setUserPhone(userArgs[3], userArgs[4]);
            break;

          default:
            // Neither was specified
            console.log(
              `'${userArgs.join(
                " "
              )}' is not a valid command. Try 'bitbase token --help'`
            );
        }
      }
      break;

    // Search for user command
    case "--search":
      // Ensure additional options are specified
      if (userArgs[2] == undefined || userArgs[3] == undefined)
        console.log(
          "Additional options must be specified. Try 'bitbase token --help"
        );
      else {
        let searchResult;

        // Show a message if the specified filter isn't a recognised letter
        if (!userArgs[2].match(/^[uep]$/))
          console.log(
            `'${userArgs.join(
              " "
            )}' is not a valid command. Try 'bitbase token --help'`
          );
        else {
          // Behaviour here depends on the option specified
          switch (userArgs[2]) {
            case "u": // Username search
              searchResult = getUserByName(userArgs[3]);
              break;

            case "e": // Email search
              searchResult = getUserByEmail(userArgs[3]);
              break;

            case "p": // Phone search
              searchResult = getUserByPhone(userArgs[3]);
              break;
          }

          // Every getUserBy function returns undefined if they fail to find a match
          // Show the returned user's token if they exist.
          if (searchResult)
            console.log(`User token is:\t${searchResult.token}`);
          else console.log("Could not find a user with that information.");
        }
      }
      break;

    default:
      console.log(
        `'${userArgs.join(
          " "
        )}' is not a valid command. Try 'bitbase token --help'`
      );
  }
};

// Function to find a user by name
const getUserByName = (username) => {
  try {
    const data = fs.readFileSync(USER_FILE);
    const users = JSON.parse(data);

    // return will be undefined if no user is found
    return users.find((user) => user.username == username);
  } catch (e) {
    console.log("Failed to read users.json");
    return undefined;
  }
};

// Function to find a user by email address
const getUserByEmail = (email) => {
  try {
    const data = fs.readFileSync(USER_FILE);
    const users = JSON.parse(data);

    // return will be undefined if no user is found
    return users.find((user) => user.email == email);
  } catch (e) {
    console.log("Failed to read users.json");
    return undefined;
  }
};

// Function to find a user by email address
const getUserByPhone = (phone) => {
  try {
    const data = fs.readFileSync(USER_FILE);
    const users = JSON.parse(data);

    // return will be undefined if no user is found
    return users.find((user) => user.phone == phone);
  } catch (e) {
    console.log("Failed to read users.json");
    return undefined;
  }
};

// Function to set a user's email address
const setUserEmail = (username, email) => {
  try {
    const data = fs.readFileSync(USER_FILE);
    const users = JSON.parse(data);

    let userIndex = users.findIndex((user) => user.username == username);

    if (userIndex > -1) {
      // Set the user's email value
      users[userIndex].email = email;

      // Save the updated user data
      fs.writeFileSync(USER_FILE, JSON.stringify(users));

      console.log(`User '${username}' email address has been updated.`);
    } else console.log(`User ${username} does not exist.`);
  } catch (e) {
    console.log("An error occurred when updating users.json: " + e);
  }
};

// Function to set a user's phone number
const setUserPhone = (username, phone) => {
  try {
    const data = fs.readFileSync(USER_FILE);
    const users = JSON.parse(data);

    let userIndex = users.findIndex((user) => user.username == username);
    if (userIndex > -1) {
      // Set the user's email value
      users[userIndex].phone = phone;

      // Save the updated user data
      fs.writeFileSync(USER_FILE, JSON.stringify(users));

      console.log(`User '${username}' phone number has been updated.`);
    } else console.log(`User ${username} does not exist.`);
  } catch (e) {
    console.log("An error occurred when updating users.json: " + e);
  }
};

// Function to add a new user
const addNewUser = (username) => {
  try {
    const data = fs.readFileSync(USER_FILE);
    const users = JSON.parse(data);

    // Create a token object to hold values as needed
    const newToken = {};

    // Check if the user already exists
    if (users.findIndex((user) => user.username == username) > -1) {
      return {
        status: "error",
        message: `Could not create user '${username}' because they already exist.`,
      };
    } else {
      // Generate a new token hash
      const hash = crypto
        .createHash("md5") // Create a Hash oject
        .update(username) // Set the data being hashed by the object to the username
        .digest("hex"); // Return the digest in hexadecimal text format

      // Create the user object
      const newToken = {
        username: username,
        token: hash,
        created: DateTime.now().toISO(),
        // expiry: DateTime.now().plus({ days: 3 }).toISO(),
        // An expiry time doesn't quite seem to make sense for a user, but the commented line above would include one
      };

      // Add this object to the users list...
      users.push(newToken);

      // ...and save it.
      fs.writeFileSync(USER_FILE, JSON.stringify(users));

      newToken.status = "ok";

      return newToken;
    }
  } catch (e) {
    return {
      status: "error",
      message: "There was an error when handling users.json",
    };
  }
};

// Note that addNewUser is exported, so that the web portal can use it later
module.exports = { tokenBit, addNewUser };
