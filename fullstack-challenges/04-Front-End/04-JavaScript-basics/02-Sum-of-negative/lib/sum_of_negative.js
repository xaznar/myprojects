const sumOfNegative = (numbers) => {
  // TODO: You are getting a `numbers` array. Return the sum of **negative** numbers only.


  let total = 0;
  console.log(numbers);
  numbers.forEach((number) => {
    if (number < 0) {
      total += number;
    }
  });
  return total;
};

console.log(sumOfNegative([-2, -5, 9, -3]));


module.exports = sumOfNegative; // Do not remove.
// const assert = require("assert");
// const sumOfNegative = require("../lib/sum_of_negative");

// describe("sumOfNegative", () => {
//   it("should return 0 for an empty array", () => {
//     assert.equal(sumOfNegative([]), 0);
//   });

//   it("should return 0 if there aren't any negative numbers", () => {
//     assert.equal(sumOfNegative([0, 3, 18]), 0);
//   });

//   it("should return -1 for the array [0, -1, 1]", () => {
//     assert.equal(sumOfNegative([0, -1, 1]), -1);
//   });

//   it("should return -100 for the array [-30, -40, 20, 18, -12, -18]", () => {
//     assert.equal(sumOfNegative([-30, -40, 20, 18, -12, -18]), -100);
//   });
// });
