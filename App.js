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
import {
  Colors,
  DebugInstructions,
  Header,
  LearnMoreLinks,
  ReloadInstructions,
} from 'react-native/Libraries/NewAppScreen';

export default function App() {
  const [buttonState, setButtonState] = useState(0);

  const ButtonGroup = (props, props2) => {
    const buttonsText = ['Delivery', 'Pickup'];
    function pressButton(t) {
      setButtonState(t);
    }
    return (
      <View style={styles.buttonGroup}>
        <TouchableOpacity onPress={pressButton(0)}>
          <Text>{buttonsText[0]}</Text>
        </TouchableOpacity>
        <TouchableOpacity onPress={pressButton(1)}>
          <Text>{buttonsText[1]}</Text>
        </TouchableOpacity>
      </View>
    );
  };

  return (
    <>
      <ButtonGroup />
      <Text>kajsdfla</Text>
    </>
  );
}

const styles = StyleSheet.create({
  buttonGroup: {
    flexDirection: 'row',
  },
});
