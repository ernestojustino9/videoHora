import React from 'react';
import ReactDOM from 'react-dom/client';
import './index.css';
import App from './App';
// import Teste from './pages/Teste';
import 'bootstrap/dist/css/bootstrap.min.css';

const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(
  <React.StrictMode>
    <App />
    {/* <Teste /> */}
  </React.StrictMode>
);
