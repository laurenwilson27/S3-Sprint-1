const fs = require('fs');
const fsPromises = require('fs').promises;
const path = require('path');
const { format, getYear } = require('date-fns');
const { uuid } = require('uuid');
const EventEmitter = require('events');
const userArgs = process.argv.slice(2);
const { get } = require('http');
class MyEmitter extends EventEmitter {}
const myEmitter = new MyEmitter();

const DEBUG = true;

myEmitter.on('event', async (userArgs) => {
    const currentDate = new Date();
    const year = getYear(currentDate);
    const month = format(currentDate, 'MM');
    const day = format(currentDate, 'dd');
    const logFolder = path.join(__dirname, 'logs', String(year), String(month), String(day));

    try {
        await fsPromises.mkdir(logFolder, { recursive: true });
        const d = format(currentDate, 'yyyy-MM-dd\'T\'HH:mm:ss');
        const logItem = `${d} - ${uuid()}\n`;
        const fileName = path.join(logFolder, 'log.txt');
        await fsPromises.appendFile(
            path.join(String(logFolder), String(fileName)),
            logItem + '\n',
        );
    } catch (err) {
        console.log(err);
    }
});

myEmitter.on('error', async (message) => {
    const currentDate = new Date();
    const year = getYear(currentDate);
    const month = format(currentDate, 'MM');
    const day = format(currentDate, 'dd');
    const logFolder = path.join(__dirname, 'logs', String(year), String(month), String(day));

    try {
        await fsPromises.mkdir(logFolder, { recursive: true });
        const d = format(currentDate, 'yyyy-MM-dd\'T\'HH:mm:ss');
        const logItem = `Error: ${message} at ${d}\n`;
        const fileName = path.join(logFolder, 'error.txt');
        await fsPromises.appendFile(
            path.join(String(logFolder), String(fileName)),
            logItem + '\n',
        );
    } catch (err) {
        console.log(err);
    }
});

myEmitter.on('event', async (event, level, message) => {
    if (DEBUG) {console.log(`Event: ${event}, level: ${level}, message: ${message}`);}
    const currentDate = new Date();
    const year = getYear(currentDate);
    const month = format(currentDate, 'MM');
    const day = format(currentDate, 'dd');
    const logFolder = path.join(__dirname, 'logs', String(year), String(month), String(day));

    try {
        await fsPromises.mkdir(logFolder, { recursive: true });
        const d = format(currentDate, 'yyyy-MM-dd\'T\'HH:mm:ss');
        const logItem = `${d} - ${event} - ${level} - ${message}\n`;
        const fileName = path.join(logFolder, 'log.txt');
        await fsPromises.appendFile(
            path.join(String(logFolder), String(fileName)),
            logItem + '\n',
        );
    } catch (err) {
        console.log(err);
    }
});

module.exports = { myEmitter };
