import {
  View,
  Text,
  TextInput,
  StyleSheet,
  TouchableOpacity,
  Image,
} from 'react-native';
import React from 'react';

export default function SearchPlaceNameBar() {
  const placeholderText = 'Food, groceries, drinks, etc.';
  return (
    <>
      <View style={[styles.outLine]}>
        {/* onPressには、TextInputと同じFunctionをcall */}
        <TouchableOpacity onPress={() => {}}>
          <Image
            style={styles.tinyLogo}
            source={require('../assets/Home/search.png')}
          />
        </TouchableOpacity>
        <TextInput
          style={styles.textinput}
          // カーソルがタップされたら発火
          onFocus={() => {}}
          placeholder={placeholderText}
          placeholderTextColor="#6B6B6B"
          selectionColor={'#4758'}
          caretHidden={false}
          inlineImageLeft="../assets/Home/filter.png"
        />
        {/* onPressには、TextInputと同じFunctionをcall */}
        <TouchableOpacity onPress={() => {}}>
          {/* タッチの範囲拡張のため */}
          <Image
            style={styles.tinyLogo}
            source={require('../assets/Home/filter.png')}
          />
        </TouchableOpacity>
      </View>
    </>
  );
}

const styles = StyleSheet.create({
  outLine: {
    paddingTop: 8,
    paddingBottom: 8,
    paddingLeft: 16,
    paddingRight: 16,
    alignSelf: 'center',
    width: '90%',
    backgroundColor: '#eee',
    borderRadius: 300,
    flexDirection: 'row',
    justifyContent: 'space-between',
  },
  // 画面中央から、一定幅左に移動
  textinput: {
    right: '100%',
  },
  tinyLogo: {
    width: 32,
    height: 32,
  },
});
