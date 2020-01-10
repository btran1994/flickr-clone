import React from "react";
import SplashContainer from './splash/splash_container';
import { Route, Switch } from 'react-router-dom'
import LoginFormContainer from './session_form/login_form_container';
import SignupFormContainer from './session_form/signup_form_container';
import { AuthRoute, ProtectedRoute } from '../util/route_util';

const App = () => (
    <div className="splash-main">
        {/* <div className="main"> */}
            <header className="splash-header">
                <a href="#/" className="home-button">Stuttr?</a>
                <Route exact path='/' component={SplashContainer} />
            </header>
        {/* </div> */}
        <div className="form-container">
            <Switch>
                <AuthRoute path="/login" component={LoginFormContainer} />
                <AuthRoute path="/signup" component={SignupFormContainer} />
            </Switch>
            <ul className="cb-slideshow">
                <li>
                    <span>Image 01</span>
                </li>
                <li>
                    <span>Image 02</span>
                </li>
                <li>
                    <span>Image 03</span>
                </li>
                <li>
                    <span>Image 04</span>
                </li>
                <li>
                    <span>Image 05</span>
                </li>
                <li>
                    <span>Image 06</span>
                </li>
                <li>
                    <span>Image 07</span>
                </li>
                <li>
                    <span>Image 08</span>
                </li>
                <li>
                    <span>Image 09</span>
                </li>
                <li>
                    <span>Image 10</span>
                </li>
                <li>
                    <span>Image 11</span>
                </li>
                <li>
                    <span>Image 12</span>
                </li>
            </ul>
            <footer className="footer">
                <a href="https://github.com/btran1994" className="git-link"><img src="https://www.iconsdb.com/icons/preview/white/github-11-xxl.png"/></a>
            </footer>
        </div>
        
    </div>
            
);

export default App;
