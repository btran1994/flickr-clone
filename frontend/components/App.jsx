import React from "react";
import SplashContainer from './splash/splash_container';
import { Route, Switch } from 'react-router-dom'
import LoginFormContainer from './session_form/login_form_container';
import SignupFormContainer from './session_form/signup_form_container';

const App = () => (
    <div>
        <header>
            <h1>Flickr?</h1>
            <SplashContainer />
        </header>
        <Switch>
            <Route path="/login" component={LoginFormContainer} />
            <Route path="/signup" component={SignupFormContainer} />
            <Route path='/' />
        </Switch>
    </div>
);

export default App;