import React, {useState} from 'react';
import {SafeAreaView, Text, TouchableOpacity, View, StyleSheet} from 'react-native';

export default function HeaderTabs() {
  const [activeTab, setActiveTab] = useState('Delivery');
  const HeaderButton = props => (
    <View>
      <TouchableOpacity
        style={{
          backgroundColor: activeTab === props.text ? 'black' : 'white',
          paddingHorizontal: 16,
          paddingVertical: 8,
          borderRadius: 30,
        }}
        onPress={() => {
          setActiveTab(props.text);
        }}>
        <Text
          style={{
            fontSize: 15,
            color: activeTab === props.text ? 'white' : 'black',
            fontWeight: 'bold',
          }}>
          {props.text}
        </Text>
      </TouchableOpacity>
    </View>
  );
  return (
    <View style={styles.main}>
      <HeaderButton text="Delivery" />
      <HeaderButton text="PickUp" />
    </View>
  );
}

const styles = StyleSheet.create({
  main: {
    flexDirection: 'row',
    alignSelf: 'center',
  },
});
