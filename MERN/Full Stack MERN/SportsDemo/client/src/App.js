import React from 'react';
import { Router } from '@reach/router';
import PageNotFound from './views/PageNotFound';
import IndexView from './views/IndexView';
import CreateView from './views/CreateView';
import DetailView from './views/DetailView';
import EditView from './views/EditView';
import '../node_modules/bootstrap/dist/css/bootstrap.min.css';
import './App.css';

function App() {
  return (
    <div className="App">
      <Router>
        {/* <Redirect from='/' to='/XXXXXXXXXX' noThrow='true' /> */}
        <IndexView path='/' />
        <CreateView path='/create' />
        <DetailView path='/:id' />
        <EditView path='/:id/edit' />
        <PageNotFound default />
      </Router>
    </div>
  );
}

export default App;
