const header = document.querySelector(".header");
const content = document.querySelectorAll(".content");

header.onclick = (e) => {
  console.log(content);
  // e.preventDefault();
  // if (content.style.display === "none") {
  //   content.style.display === "block";
  // } else {
  //   content.style.display === "none";
  // }
  // return false;
};
