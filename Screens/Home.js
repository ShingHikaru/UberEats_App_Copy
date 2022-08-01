import {View, Text, SafeAreaView, StyleSheet, geolocation} from 'react-native';
import React, {useEffect, useState} from 'react';
import HeaderTabs from './Home/HeaderTabs';
import PlaceTouchBar from './Home/PlaceTouchBar';

export default function Home() {
  const [screenState, setScreenState] = useState('Delivery');
  


  return (
    <View style={styles.screen}>
      <View style={styles.buttonArea}>
        <HeaderTabs />
      </View>
      <PlaceTouchBar pressAddress={() => pressFunc()}/>
    </View>
  );
}

const styles = StyleSheet.create({
  screen: {
    flex: 1,
    backgroundColor: '#eee',
  },
  buttonArea: {
    backgroundColor: 'white',
    paddingVertical: 8,
  },
});
