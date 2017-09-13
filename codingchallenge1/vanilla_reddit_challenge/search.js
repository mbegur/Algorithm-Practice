const searchInput = document.querySelector(".search-input");
const searchResults = document.querySelector(".search-results");
const submitButton = document.querySelector(".submit-button");
const submitForm = document.querySelector(".search-form");

const fetchSearchResults = () => {
  console.log(searchInput.value);
  return fetch(`https://www.reddit.com/user/${searchInput.value}/submitted.json`)
    .then(res => res.json())
    .then(res2 => parseResults(res2));
};

const parseResults = (results) => {
  let array = results.data.children;
  let sortedArray = array.sort((a, b) => {
    return b.data.score - a.data.score;
  });
  let listElements = sortedArray.map((element, idx) => {
    return `<li>${element.data.score} ${element.data.title}</li>`;
  }).join('');

  searchResults.innerHTML = listElements;
};

submitForm.onsubmit = (e) => {
  e.preventDefault();
  fetchSearchResults();
};

// searchInput.addEventListener('input', fetchSearchResults);

// submitButton.onclick = (e) => {
//   e.preventDefault();
//   fetchSearchResults();
//   // return false;
// };

// submitButton.addEventListener('click', (e) => {
//   e.preventDefault();
//   fetchSearchResults();
//   // return false;
//   }
// );
// submitButton.addEventListener('mouseup', () => {return false;}));
