import React from 'react';
import { Link, Redirect } from 'react-router-dom';
import SigninHeader from '../../headers/SigninHeader';
import Alert from 'react-s-alert';
import { FACEBOOK_AUTH_URL, GOOGLE_AUTH_URL } from '../../../constants/constants';
import { withTranslation } from 'react-i18next';

class SigninPage extends React.Component {
  constructor(props) {
    super(props)
    this.state = {
      email: '',
      password: ''
    }
    this.handleInputChange = this.handleInputChange.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
  }
  handleInputChange(event) {
    const target = event.target;
    const inputName = target.name;
    const inputValue = target.value;

    this.setState({
      [inputName]: inputValue
    });
  }
  handleSubmit(event) {
    event.preventDefault();

    const loginRequest = Object.assign({}, this.state);

    this.props.login(loginRequest);
  }

  componentDidMount() {
    if (this.props.location.state && this.props.location.state.error) {
      setTimeout(() => {
        Alert.error(this.props.location.state.error, {
          timeout: 5000
        });
        this.props.history.replace({
          pathname: this.props.location.pathname,
          state: {}
        });
      }, 100);
    }
  }

  render() {
    if (this.props.authentication.authenticated) {
      if (!this.props.location.state.from) {
        return <Redirect
          to={{
            pathname: "/",
            state: { from: this.props.location }
          }} />;
      }else{
        return <Redirect
        to={{
          pathname: this.props.location.state.from,
          state: { from: this.props.location }
        }} />
      }
    }
    let {t} = this.props;
    return (
      <div>
        <SigninHeader />
        <div className="b-t">
          <div className="center-block w-xxl w-auto-xs p-y-md text-center">
            <div className="p-a-md">
              <div>
                <a href={FACEBOOK_AUTH_URL} className="btn btn-block indigo text-white m-b-sm">
                  <i className="fa fa-facebook pull-left" />
                  {/* Sign in with Facebook */}
                  {t('signinfb')}
                </a>
                <a href={GOOGLE_AUTH_URL} className="btn btn-block red text-white">
                  <i className="fa fa-google-plus pull-left" />
                  {/* Sign in with Google+ */}
                  {t('signingp')}
                </a>
              </div>
              <div className="m-y text-sm">
              {t('common:or')}                
              </div>
              <form name="form" onSubmit={this.handleSubmit}>
                <div className="form-group">
                  <input
                    value={this.state.email} onChange={this.handleInputChange} name="email"
                    type="email" className="form-control" placeholder="Email" required />
                </div>
                <div className="form-group">
                  <input
                    value={this.state.password} onChange={this.handleInputChange} name="password"
                    type="password" className="form-control" placeholder={t('common:password')} required />
                </div>
                <div className="m-b-md">
                  <label className="md-check">
                    <input type="checkbox" /><i className="primary" /> &nbsp;
                    {t('keepsignin')}
                  </label>
                </div>
                <button type="submit" className="btn btn-lg black p-x-lg">{t('common:signin')}</button>
              </form>
              <div className="m-y">
                <a href="forgot-password.html" className="_600">{t('forgot')}</a>
              </div>
              <div>
                {/* Do not have an account? */}
                {t('noacc')}&nbsp;
                <Link to="/signup" className="text-primary _600">{t('common:signup')}</Link>
              </div>
            </div>
          </div>
        </div>
      </div>
    )
  }
}

export default withTranslation(['signinout','common'])(SigninPage);
