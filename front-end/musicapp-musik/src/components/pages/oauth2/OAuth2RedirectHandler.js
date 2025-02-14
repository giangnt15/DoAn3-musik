import React, { Component } from 'react';
import { Redirect } from 'react-router-dom'
import { ACCESS_TOKEN } from '../../../constants/constants';

class OAuth2RedirectHandler extends Component {
    getUrlParameter(name) {
        name = name.replace(/[\[]/, '\\[').replace(/[\]]/, '\\]');
        var regex = new RegExp('[\\?&]' + name + '=([^&#]*)');

        var results = regex.exec(this.props.location.search);
        return results === null ? '' : decodeURIComponent(results[1].replace(/\+/g, ' '));
    };

    render() {        
        const token = this.getUrlParameter('token');
        const error = this.getUrlParameter('error');      
        if(token) {
            localStorage.setItem(ACCESS_TOKEN, token);
            this.props.loginSuccess();
            this.props.loadCurrentUser();
            let fromLoc =  sessionStorage.getItem('from');
            sessionStorage.removeItem('from');
            return <Redirect to={{
                pathname: fromLoc?fromLoc:'/user-profile',
                state: { from: this.props.location }
            }}/>; 
        } else {
            this.props.loginError();
            return <Redirect to={{
                pathname: "/login",
                state: { 
                    from: this.props.location,
                    error: error 
                }
            }}/>; 
        }
    }
}

export default OAuth2RedirectHandler;