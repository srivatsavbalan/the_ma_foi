import React, { Component } from 'react';
import {
  AppRegistry,
  StyleSheet,
  Text,
  View,
  Image
} from 'react-native';

export default class SplashScreen extends Component {
  constructor(props) {
    super(props);
  }
  render() {
    return (
      <View style={{flex:1}}>
        <Image
            style={{flex:1}}
            source={require('./img/BG.png')} />
      </View>
    )
  }
}

AppRegistry.registerComponent('SplashScreen', () => SplashScreen);
