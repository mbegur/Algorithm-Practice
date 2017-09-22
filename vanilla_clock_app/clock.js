const clock = document.getElementById("clock");

var currentDate;

const ticker = () => {

  setInterval(() => (currentDate = new Date()), 1000);
  return currentDate;
};

let hours = ticker().getHours();
// let mins = currentDate.getMinutes();
// let secs = currentDate.getSeconds();
