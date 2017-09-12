import React from 'react';

class Form extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      username: "",
      allPosts: [],
      allComments: [],
    };
    this.handleSubmit = this.handleSubmit.bind(this);
    this.setUsername = this.setUsername.bind(this);
    // this.fetchA = this.fetchA.bind(this);
  }

  setUsername(e) {
    this.setState({
      username: e.target.value
    });
  }

  fetchUserPosts(username) {
    fetch(`https://www.reddit.com/user/${username}/submitted.json`)
    .then(res => res.json())
    .then((res2) => {
      this.setState({
        allPosts: this.parsePosts(res2)
      });
      console.log(this.state.allPosts);
    });

  }

  // fetchUserComments(username) {
  //   fetch(`https://www.reddit.com/user/${username}/comments.json`)
  //   .then(res => res.json())
  //   .then((res2) => {
  //     this.setState({
  //       allComments: this.parseComments(res2)
  //     });
  //   });
  // }

  parsePosts(data) {
    let all = [];
    data.data.children.forEach((post, idx) => {
      let info = {};

        info.title=  post.data.title;
        info.score = post.data.score;
        info.link = post.data.url;
      all.push(info);
    });
    return all.sort((a, b) => (b.score - a.score));
  }

  // parseComments(data) {
  //   let all = [];
  //   console.log(data);
  //   data.children.forEach((comment, idx) => {
  //     let info = {};
  //
  //       info.body=  comment.data.body;
  //       info.score = comment.data.score;
  //       info.link = comment.data.url;
  //     all.push(info);
  //   });
  //   return all;
  // }

  handleSubmit(e) {
    e.preventDefault();
    this.fetchUserPosts(this.state.username);
    // this.fetchUserComments(this.state.username);

  }



  render() {
    let posts;
    let comments;
    let {allPosts, allComments} = this.state;
    if (this.state.allPosts.length > 0) {
      posts = allPosts.map((post, idx) => {
        return(
          <li>
          {post.score}
          <a href={post.link}>{post.title}</a>
        </li>
        );
      });
    } else {
      posts = null;
    }

    return (
      <div>
        <form onSubmit={this.handleSubmit}>
          <input type="text" onChange={this.setUsername}>
          </input>
          <input type="submit"></input>
          <ul>
            {posts}
          </ul>
        </form>
      </div>
    );
  }
}

export default Form;
