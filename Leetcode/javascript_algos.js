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

function mergeSort(array) {
  if (array.length <= 1) {
    return array;
  } else {
    const mid = Math.floor(array.length / 2);

    const left = mergeSort(array.slice(0, mid));
    const right = mergeSort(array.slice(mid));

    return merge(left, right);
  }
}

function merge(left, right) {

  const sorted = [];
  while (left.length > 0 && right.length > 0) {

    if (left[0] <= right[0]) {
      sorted.push(left.shift());
    } else if (right[0] < left[0]){
      sorted.push(right.shift());
    }
  }
  return sorted.concat(left, right);
}

const flatten = (arr) => {
  let result = [];
  for (var i = 0; i < arr.length; i++) {
    if (typeof arr[i] === 'object') {
      result = result.concat(flatten(arr[i]));
    } else {
      result.push(arr[i]);
    }
  }
  return result;
};

console.log(flatten([123,1234,[3452, 3245], 2345, [2345,2345,2345,223]]));
