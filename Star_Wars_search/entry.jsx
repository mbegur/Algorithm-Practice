import React from 'react';
import ReactDOM from 'react-dom';

const fetchSearchResult = (text) => {
  return fetch(`https://swapi.co/api/people/?search=${text}`)
  .then(function(response) {
    return response.json();
  }).then(console.log);
};

class Search extends React.Component {
  constructor(props) {
    this.state = {
      searchParams: ""
    };
  }

  setSearchParams(e) {
    this.setState({
      searchParams: e.target.value
    });
  }

  searchResults() {
    let starWars = fetchSearchResult(this.state.searchParams);
    let allResults = starWars.results;
    


  }

  render() {

  }
}

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
