

const fetchSearchResult = () => {
  const searchInput = document.querySelector('.search');
  return fetch(`https://swapi.co/api/people/?search=`)
    .then(response => response.json)
    .then(response2 => console.log);
};

const parsedResults = () => {

};
