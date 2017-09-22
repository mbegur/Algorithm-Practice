function reverse_string(str) {
  if (str.length === 0) {
    return str;
  }
  return str.slice(str.length - 1) + reverse_string(str.slice(0, str.length - 1));
}

console.log(reverse_string("12345"));
