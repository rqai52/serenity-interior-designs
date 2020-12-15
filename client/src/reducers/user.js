
import React from 'react';
import axios from 'axios';
import { setFlash } from './flash';
const LOGIN = 'LOGIN';
const LOGOUT = 'LOGOUT';

export const login = (user) => {
  return { type: LOGIN, user };
}

const logout = () => {
  return { type: LOGOUT };
}

export const registerUser = (user, history) => {