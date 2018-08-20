import React from 'react';
import ReactDOM from 'react-dom';

import Root from './components/root';
import configureStore from './store/store';

import * as SearchApiUtil from './util/search_api_util';
import { requestBusinesses, receiveHotSpots, RECEIVE_HOT_SPOTS } from './actions/business_actions';

document.addEventListener('DOMContentLoaded', () => {
  let _preLoadedState;

  if (window.currentUser) {
    _preLoadedState = {
      session: { id: window.currentUser.id},
      entities: {
        users: { [window.currentUser.id]: window.currentUser }
      }
    };
  }
  const store = configureStore(_preLoadedState);

  const root = document.getElementById('root');
  ReactDOM.render(<Root store={ store }/>, root);

  window.requestBusinesses = requestBusinesses;
  window.dispatch = store.dispatch;
  window.receiveHotSpots = receiveHotSpots;

});
