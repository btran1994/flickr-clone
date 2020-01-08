import React from "react";
import SplashContainer from './splash/splash_container';
import { Route, Switch } from 'react-router-dom'
import LoginFormContainer from './session_form/login_form_container';
import SignupFormContainer from './session_form/signup_form_container';
import { AuthRoute, ProtectedRoute } from '../util/route_util';

const App = () => (
    <div className="splash-main">
        <div className="main">
            <header className="splash-header">
                <h1>Stuttr?</h1>
                <Route exact path='/' component={SplashContainer} />
            </header>
        </div>
        <div className="form-container">
            <Switch>
                <AuthRoute path="/login" component={LoginFormContainer} />
                <AuthRoute path="/signup" component={SignupFormContainer} />
            </Switch>
        </div>
    </div>
            
);

export default App;