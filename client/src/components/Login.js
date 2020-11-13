import React, { Component } from 'react';
import { Header, Segment, Form, Button } from 'semantic-ui-react';
import { connect } from 'react-redux';
import { handleLogin } from '../reducers/user';

class Login extends Component {
  state = { email: '', password: '' };

  handleChange = (event) => {
    const { name, value } = event.target;
    this.setState({ [name]: value });
  }

  handleSubmit = (event) => {
    event.preventDefault();
    const { dispatch, history } = this.props;
    dispatch(handleLogin(this.state, history));
  }

  render() {
    const { email, password } = this.state;
    return (
      <Segment basic>
        <Header as="h1" textAlign="center">Login</Header>
        <Form onSubmit={this.handleSubmit}>
          <Form.Field>
            <label htmlFor="email">Email</label>
            <input
              required
              id="email"
              name="email"
        