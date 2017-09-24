// function reverseString(str) {
//   if (str.length === 0) {
//     return str;
//   }
//   return str.slice(str.length - 1) + reverseString(str.slice(0, str.length - 1));
// }


const reverseString = (str) => {
  if (str.length === 0) {
    return str;
  }
  return str.slice(str.length - 1) + reverseString(str.slice(0, str.length - 1));

};

console.log(reverseString("12345"));

const twoSum = (arr, target) => {
  const hash = {};
  for (var i = 0; i < arr.length; i++) {
    if (hash[arr[i]]) {
      return true;
    } else {
      hash[target - arr[i]] = true;
    }
  }
  return false;
};

console.log(twoSum([1,2,3,4,5,6], 1234));

Array.prototype.quickSort = function () {
  if (this.length < 2) {
    return this;
  }

  let pivot = this[0];
  let left = [];
  let right = [];

  for (var i = 1; i < this.length; i++) {
    if (this[i] < pivot) {
      left.push(this[i]);
    } else {
      right.push(this[i]);
    }
  }

  return left.quickSort().concat(pivot, right.quickSort());
};
