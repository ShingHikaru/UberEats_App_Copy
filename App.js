import React, {useState} from 'react';
// import type {Node} from 'react';
import {
  Button,
  SafeAreaView,
  ScrollView,
  StatusBar,
  StyleSheet,
  Text,
  TouchableOpacity,
  useColorScheme,
  View,
} from 'react-native';
import Home from './Screens/Home';

export default function App() {
  return (
    <>
      <SafeAreaView />
      <Home />
    </>
  );
}

const styles = StyleSheet.create({
  buttonGroup: {
    flex: 1,
    flexDirection: 'row',
  },
  buttonStyle: {},
});
