
const searchInput = document.querySelector('.search');
const suggestions = document.querySelector('.suggestions');

const fetchSearchResult = () => {
  console.log(searchInput.value);
  if (searchInput.value === "") {
    fetch(`https://swapi.co/api/people/?search=`);
    parsedResults([]);
    return;
  }
  return fetch(`https://swapi.co/api/people/?search=${searchInput.value}`)
    .then(response => response.json())
    .then(response2 => parsedResults(response2.results));
};

const parsedResults = (array) => {
  console.log(array);
  const html = array.map((element, idx) => {
    return `
      <li>
        ${element.name}
      </li>
    `;
  }).join('');
  suggestions.innerHTML = html;
};

searchInput.addEventListener('input', fetchSearchResult);
// searchInput.addEventListener('keyup', fetchSearchResult);
