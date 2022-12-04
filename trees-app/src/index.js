import React from 'react';
import ReactDOM from 'react-dom/client';
import './index.css';
import WelcomePage from './components/WelcomePage';
import reportWebVitals from './reportWebVitals';
import OptionsPage from './components/OptionsPage';
import { BrowserRouter as Router } from "react-router-dom";
import { Routes, Route } from "react-router";
import ResultPage from './components/ResultPage';
import NotFoundPage from './components/NotFoundPage';

const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(
  <React.StrictMode>
    <Router>
        <Routes>
          <Route path="/" element={<WelcomePage />} />
          <Route path="/options" element={<OptionsPage />} />
          <Route path="/result" element={<ResultPage />} />
          <Route path="/404" element={<NotFoundPage />} />
        </Routes>
      </Router>
    
  </React.StrictMode>
);

// If you want to start measuring performance in your app, pass a function
// to log results (for example: reportWebVitals(console.log))
// or send to an analytics endpoint. Learn more: https://bit.ly/CRA-vitals
reportWebVitals();
