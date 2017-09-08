import React from 'react';
import ReactDOM from 'react-dom';

export const fetchSearchResult = (text) => {
  return fetch(`https://swapi.co/api/people/?search=${text}`)
  .then(function(response) {
    return response.json();
  }).then(console.log);
};

class Root extends React.Component {
  render() {
    return(
      <div>
        <Search/>
      </div>
    );
  }
}

document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(<Root/>, document.getElementById('main'));
});
