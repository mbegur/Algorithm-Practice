export const fetchSearchResult = (text) => {
  return fetch(`https://swapi.co/api/people/?search=${text}`)
  .then(function(response) {
    return response.json();
  }).then(console.log);
};
