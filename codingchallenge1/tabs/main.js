const header = document.querySelectorAll(".header");
const content = document.querySelectorAll(".content");


const hiddenOrNah = (element) => {
  element.style.display === "none" ? element.style.display = "block" : element.style.display = "none";
};

header.forEach((element, idx) => {
  // element.addEventListener('click', (e) => {
  //   e.preventDefault();
  //   hiddenOrNah(content[idx]);
  // });
   element.onclick = (e) => {
    e.preventDefault();
    hiddenOrNah(content[idx]);
  };
  // };
});
