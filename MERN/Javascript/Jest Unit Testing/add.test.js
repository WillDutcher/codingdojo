// add.js
const { test, expect } = require('@jest/globals');
const { describe } = require('yargs');
const { add } = require('./add');

test('correctly returns the sum of two numbers', () => {
        expect(add(2, 2)).toBe(4);
        // expect(add(4, 6)).toBe(10);
    });

// describe('add', () => {
//     test('correctly returns the sum of two numbers', () => {
//         expect(add(2, 2)).toBe(4);
//         expect(add(4, 6)).toBe(10);
//     });
// });