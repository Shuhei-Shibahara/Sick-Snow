import React from 'react';
import { Route, Switch } from 'react-router-dom';
import SignupFormPage from './components/SignupFormPage';
import LoginFormPage from './components/LoginFormPage';
import Navigation from './components/Navigation';
import ProfilePage from './components/ProfilePage';
import HomePage from './components/HomePage'
function App() {
  return (
    <>
        <Navigation />
          <Switch>
            <Route path="/">
              <HomePage />
            </Route>
            <Route path="/login" >
              <LoginFormPage />
            </Route> 

            <Route path="/signup">
              <SignupFormPage />
            </Route>

            <Route path="/cart">
              <ProfilePage />
            </Route>
          </Switch>
    </>
  );
}

export default App;
