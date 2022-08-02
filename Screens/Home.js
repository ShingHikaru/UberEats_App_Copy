import {
  View,
  Text,
  SafeAreaView,
  StyleSheet,
  geolocation,
  TouchableWithoutFeedback,
} from 'react-native';
import React, {useEffect, useState} from 'react';
import HeaderTabs from './Home/HeaderTabs';
import PlaceTouchBar from './Home/PlaceTouchBar';
import SearchPlaceNameBar from './Home/SearchPlaceNameBar';

export default function Home() {
  // recognize button state on this screen.and make change screen view tapping button.
  const [activeTab, setActiveTab] = useState('Delivery');

  useEffect(() => {
    console.log(activeTab);
  }, [activeTab]);

  // "Delivery" selected
  if (activeTab === 'Delivery') {
    return (
      <View style={styles.screen}>
        <View style={styles.buttonArea}>
          <HeaderTabs setActiveTab={setActiveTab} />
          <PlaceTouchBar pressAddress={() => {}} placeAreaStyle={styles.placeArea} />
          <SearchPlaceNameBar />
        </View>
      </View>
    );
    // "PickUp" selected
  } else {
    return (
      <View style={styles.screen}>
        <View style={styles.buttonArea}>
          <HeaderTabs setActiveTab={setActiveTab} />
        </View>
      </View>
    );
  }
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
  placeArea: {
    alignSelf: 'center',
    padding: 16,
  }
});
