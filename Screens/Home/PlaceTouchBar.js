import {
  View,
  Text,
  navigator,
  StyleSheet,
  TouchableWithoutFeedback,
} from 'react-native';
import React, {useState, useEffect} from 'react';

export default function PlaceTouchBar(props) {
  const [position, setPosition] = useState({latitude: 0, longitude: 0});

  useEffect(() => {
    // TODO: to set function get current position's address name
    CheckIfLocationEnabled();
  }, []);

  const CheckIfLocationEnabled = async () => {
    let enabled = await Location.hasServicesEnabledAsync();

    if (!enabled) {
      Alert.alert(
        'Location Service not enabled',
        'Please enable your location services to continue',
        [{text: 'OK'}],
        {cancelable: false},
      );
    } else {
      setLocationServiceEnabled(enabled);
    }
  };

  const getCurrentPosition = async () => {
    navigator.geolocation.getCurrentPosition(position => {
      const {latitude, longitude} = position.coords;
      setPosition({latitude, longitude});
    });
  };
  // TODO: change to current address
  const currentAddress = '*******yard, ********city';
  return (
    <View style={props.placeAreaStyle}>
      <TouchableWithoutFeedback
        onPress={() => {
          props.pressAddress();
        }}>
        <Text style={styles.textStyle}>Now - {currentAddress}</Text>
      </TouchableWithoutFeedback>
    </View>
  );
}

const styles = StyleSheet.create({
  textArea: {
    alignSelf: 'center',
  },
  textStyle: {
    fontWeight: '400',
    fontSize: 16,
  },
});
