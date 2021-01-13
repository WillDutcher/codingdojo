const { test, expect } = require('@jest/globals');
const { describe } = require('yargs');
const minus = require('./minus');

test('subtracts num2 from num1 and gives result', () => {
    expect(minus(3, 2)).toBe(1);
});