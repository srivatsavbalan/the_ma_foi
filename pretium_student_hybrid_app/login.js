import React, { Component } from 'react';
import {
  AppRegistry,
  StyleSheet,
  Text,
  View,
  Button,
  TextInput
} from 'react-native';

export default class Login extends Component {
  constructor(props) {
    super(props);
  }
  render() {
    return (
      <View style={{flex:1}}>
        <View style={{flex: 1}}>
          <TextInput
            ref='Email'
            value='s'
            autoCapitalize ={'none'}
            keyboardType='default'
            returnKeyType='next'
            placeholderTextColor='gray'
            underlineColorAndroid='transparent'
            onSubmitEditing={() => this.refs.password.focus()}
            placeholder={'email'} />
        </View>
        <View style={{flex: 1}}>
          <TextInput
            ref='password'
            value='1'
            autoCapitalize ={'none'}
            keyboardType='default'
            placeholderTextColor='gray'
            returnKeyType='go'
            secureTextEntry
            underlineColorAndroid='transparent'
            placeholder={'password'} />
        </View>
        <View style={{flex: 1}}>
          <Button title="" color="#841584" onPress={() => this.validateLogin(Email, password)} />
        </View>
      </View>
    )
  }
}

AppRegistry.registerComponent('Login', () => Login);