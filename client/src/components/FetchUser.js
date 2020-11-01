
import { Component } from 'react';
import axios from 'axios';
import { connect } from 'react-redux';
import { login } from '../reducers/user';

class FetchUser extends Component {
  state = { loaded: false };

  componentDidMount() {
    const { isAuthenticated, dispatch } = this.props;