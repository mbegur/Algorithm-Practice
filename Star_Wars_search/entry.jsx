import React from 'react';
import ReactDOM from 'react-dom';



class Search extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      searchParams: ""
    };
    this.fetchSearchResults = this.fetchSearchResults.bind(this);
    this.setSearchParams = this.setSearchParams.bind(this);

  }

  setSearchParams(e) {
    this.setState({
      searchParams: e.target.value
    });
  }

  fetchSearchResults() {

      return fetch(`https://swapi.co/api/people/?search=${this.state.searchParams}`)
      .then(function(response) {
        return response.json();
      }).then((response2) => {
        this.searchResults(response2.results);
      });

  }

  searchResults(response) {
    let allResult = response.map((result, idx) => {
      return (
        <li>
          {result.name}
        </li>
      );
    });
    return(
      <ul>allResult</ul>
    );
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
        {this.fetchSearchResults()}
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
