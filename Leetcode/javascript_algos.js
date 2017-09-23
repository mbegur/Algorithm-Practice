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
