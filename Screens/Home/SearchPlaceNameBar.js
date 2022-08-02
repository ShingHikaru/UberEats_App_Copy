import {View, Text, TextInput, StyleSheet} from 'react-native';
import React from 'react';

export default function SearchPlaceNameBar() {
  let placeholderText = 'Food, groceries, drinks, etc.';
  return (
    <View>
      <TextInput
        style={styles.outLine}
        placeholder={placeholderText}
        placeholderTextColor="#6B6B6B"
        selectionColor={'#4758'}
        caretHidden={false}
      />
    </View>
  );
}

const styles = StyleSheet.create({
  outLine: {
    padding: 20,
    alignSelf: 'center',
    height: 36,
    width: '80%',
    backgroundColor: '#eee',
    borderRadius: 300,
  },
});
