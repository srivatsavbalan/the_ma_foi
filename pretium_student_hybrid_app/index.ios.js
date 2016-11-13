/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 * @flow
 */

import React, { Component } from 'react';
import Login from "./login"
import Profile from "./profile"
import SplashScreen from "./splashscreeen"
import {
  AppRegistry,
  StyleSheet,
  Text,
  View,
  AsyncStorage,
  Alert
} from 'react-native';

export default class pretium_student_hybrid_app extends Component {
  constructor(props) {
    super(props);
  
    this.state = {
      loading: true,
      authorized: false
    };
    var thisObj = this;
    // AsyncStorage.getItem('@authorization:auth_token').then((auth_token) => {
    //   thisObj.setState({"loading": false})
    //   Alert.alert("Async Success")
    //   if ( auth_token ) {
    //     Alert.alert("No Auth")
    //     thisObj.setState({"authorized": true})
    //   } else {
    //     Alert.alert("Auth")
    //     thisObj.setState({"authorized": false})
    //   }
    //  }).catch(() => {
    //    thisObj.setState({"loading": false})
    //    thisObj.setState({"authorized": false})
    //  })

  }
  render() {
    if ( this.state.loading ) {
      return (<SplashScreen />);
    } else {
      if ( !this.state.authorized ) {
        return (<Login />);
      }
      return (<Profile />);
    }
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#F5FCFF',
  },
  welcome: {
    fontSize: 20,
    textAlign: 'center',
    margin: 10,
  },
  instructions: {
    textAlign: 'center',
    color: '#333333',
    marginBottom: 5,
  },
});

AppRegistry.registerComponent('pretium_student_hybrid_app', () => pretium_student_hybrid_app);
