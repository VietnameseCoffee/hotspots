import React from 'react';
import ReactDOM from 'react-dom';

import Root from './components/root';
import configureStore from './store/store';

import * as SearchApiUtil from './util/search_api_util';

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


  window.ajaxCall = SearchApiUtil.showSearch;
  window.getState = store.getState;
  window.dispatch = store.dispatch;
});
