import React, {useState} from 'react';
import {
  SafeAreaView,
  Text,
  TouchableOpacity,
  View,
  StyleSheet,
} from 'react-native';

export default function HeaderTabs(props) {
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
          props.setActiveTab(props.text);
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
      <HeaderButton text="Delivery" setActiveTab={(props.setActiveTab)} />
      <HeaderButton text="PickUp" setActiveTab={(props.setActiveTab)} />
    </View>
  );
}

const styles = StyleSheet.create({
  main: {
    flexDirection: 'row',
    alignSelf: 'center',
  },
});
