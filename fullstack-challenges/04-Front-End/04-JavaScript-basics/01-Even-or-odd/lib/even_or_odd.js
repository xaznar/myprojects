const evenOrOdd = (number) => {
  // TODO: this should return "even" if the number is even, "odd" otherwise
  if (number % 2 === 0) {
    return "even";
  }
  return "odd";
};

console.log(evenOrOdd(4));


module.exports = evenOrOdd; // Do not remove. We need this for the spec to know about your method.
