import React from 'react';

class SessionForm extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
            username: '',
            password: ''
        };
        this.handleSubmit = this.handleSubmit.bind(this);
    }

    update(field) {
        return e => this.setState({
            [field]: e.currentTarget.value
        });
    }

    handleSubmit(e) {
        let demoUser = { username: 'sendhelp', password: 'lifealert' };
        e.preventDefault();
        if (e.target.innerHTML === 'Demo Login') {
            this.props.login(demoUser)
        } else {
            const user = Object.assign({}, this.state);
            this.props.processForm(user);
        }
    }

    componentWillUnmount() {
        this.props.clearErrors();
    }

    renderErrors() {
        return (
            <ul>
                {this.props.errors.map((error, i) => (
                    <li key={`error-${i}`}>
                        {error}
                    </li>
                ))}
            </ul>
        );
    }

    render() {
        let defaultText;
        let display;
        let buttonText;
        if (this.props.formType === 'login') {
            display = 'Log in to Stuttr'
            defaultText = 'Not a Stuttr member?'
            buttonText = 'Login'
        } else {
            display = 'Sign up for Stuttr'
            defaultText = 'Already a Stuttr member?'
            buttonText = 'Sign Up'
        }
        

        return (
            <div className="login-form-container">
                <form onSubmit={this.handleSubmit} className="login-form-box">
                    <h2>{display}</h2>
                    <br />
                    <div className="login-form">
                        <br />
                        <div className="format-username">
                            <label className="username-box">Username</label>
                            <input type="text"
                                value={this.state.username}
                                onChange={this.update('username')}
                                className="login-input"
                            />
                        </div>
                        <br />
                        <div className="format-password">
                            <label className="password-box">Password</label>
                            <input type="password"
                                value={this.state.password}
                                onChange={this.update('password')}
                                className="login-input"
                            />
                        </div>
                        <p>{this.props.errors}</p>
                        <br />
                        {/* Please {this.props.formType} or {this.props.navLink}
                        {this.renderErrors()} */}
                        {defaultText} {this.props.navLink}
                        <br/>
                        <input className="session-submit" type="submit" value={buttonText} />
                        <button onClick={this.handleSubmit} className="demo-button">Demo Login</button>
                    </div>
                </form>
            </div>
        );
    }
}

export default SessionForm;
