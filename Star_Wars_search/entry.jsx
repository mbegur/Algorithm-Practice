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
    super(props);
    this.state = {
      searchParams: ""
    };
    this.searchResults = this.searchResults.bind(this);
    this.setSearchParams = this.setSearchParams.bind(this);

  }

  setSearchParams(e) {
    this.setState({
      searchParams: e.target.value
    });
  }

  searchResults() {
    if (this.state.searchParams === "") {
      return [];
    }
    let starWars = fetchSearchResult(this.state.searchParams);
    let allResults = starWars.results;
    let mappedResults;
    if (allResults) {
      mappedResults = allResults.map((result, idx) => {
        return(
          <li>
          {result.name}
          </li>
        );
      });
    } else {
      return null;
    }
  }

  parseResults() {
    if (!this.searchResults()) {
      return (
        <div></div>
      );
    } else {
      return (
        <div>
          <ul>
            {this.searchResults()}
          </ul>
        </div>
      );
    }
  }

  render() {

    return(
      <div>
        <input
          type="text"
          placeholder="Search"
          onChange={this.setSearchParams}
          value={this.state.searchParams}
           >
        </input>
        {this.parseResults()}
      </div>
    );
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
