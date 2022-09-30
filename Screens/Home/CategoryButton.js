import {
  View,
  Text,
  StyleSheet,
  Image,
  TouchableOpacity,
  useWindowDimensions,
} from 'react-native';
import React, {useEffect} from 'react';
import {COLOR} from '../Component/const.js';

// TODO: constにCOLORクラス作成、
export default function CategoryButton(props) {
  const deviceWidth = useWindowDimensions().width;
  const deviceHeight = useWindowDimensions().height;
  // const detailArray = [
  //   {text: 'Restaurants', url: '../assets/Home/food.png'},
  //   {text: 'Grocery', url: require('../assets/Home/shopping.png')},
  //   {text: 'Convenience', url: require('../assets/Home/convenience.png')},
  //   {text: 'Alcohol', url: require('../assets/Home/alchol.png')},
  //   {text: 'Ride', url: require('../assets/Home/car.png')},
  // ];

  // TODO: レストラン画面に遷移するように、Navigation.jsを修正、this.navigation.navigate('画面名')で遷移
  function pressRestaurant() {
    console.warn('asdfasd');
  }
  const UpperButtonBase = props => {
    return (
      <View style={props.style}>
        <TouchableOpacity
          style={[styles.content1, {width: deviceWidth * 0.42}]}>
          <View style={{justifyContent: 'flex-end'}}>
            <Text style={styles.textStyleHigh}>{props.text}</Text>
          </View>
          <View style={{justifyContent: 'center'}}>
            <Image style={styles.iconSize} source={props.imgUrl} />
          </View>
        </TouchableOpacity>
      </View>
    );
  };

  const LowerButtonBased = props => {
    return (
      <View style={props.style}>
        <TouchableOpacity
          style={[styles.content2, {width: deviceWidth * 0.27}]}>
          <Image style={styles.iconSize} source={props.imgUrl} />
          <Text style={styles.textStyleLow}>{props.text}</Text>
        </TouchableOpacity>
      </View>
    );
  };

  return (
    <View style={props.style}>
      <View style={{flexDirection: 'row', alignSelf: 'center'}}>
        <UpperButtonBase
          text="Restaurant"
          imgUrl={require('../assets/Home/food.png')}
          pressFunc={() => pressRestaurant()}
        />
        <UpperButtonBase
          style={styles.ml16}
          text="Grocery"
          imgUrl={require('../assets/Home/shopping.png')}
        />
      </View>
      <View style={{flexDirection: 'row', alignSelf: 'center'}}>
        <LowerButtonBased
          text="Convenience"
          imgUrl={require('../assets/Home/convenience.png')}
        />
        <LowerButtonBased
          style={styles.ml16}
          text="Alcohol"
          imgUrl={require('../assets/Home/alchol.png')}
        />
        <LowerButtonBased
          style={styles.ml16}
          text="Ride"
          imgUrl={require('../assets/Home/car.png')}
        />
      </View>
    </View>
  );
}

const styles = StyleSheet.create({
  outline: {
    backgroundColor: 'white',
    width: '90%',
  },
  firstRow: {
    flexDirection: 'row',
  },
  content1: {
    justifyContent: 'space-between',
    marginTop: 16,
    borderRadius: 10,
    backgroundColor: COLOR.uberGray,
    flexDirection: 'row',
    height: 100,
    padding: 8,
  },
  content2: {
    alignItems: 'center',
    justifyContent: 'center',
    marginTop: 16,
    borderRadius: 10,
    backgroundColor: COLOR.uberGray,
    height: 100,
    padding: 8,
  },
  iconSize: {
    width: 48,
    height: 48,
    marginBottom: 8,
  },
  textStyleHigh: {
    fontWeight: 'bold',
    fontSize: 16,
  },
  textStyleLow: {
    fontWeight: 'bold',
    fontSize: 13,
  },
  ml16: {
    marginLeft: 16,
  },
});
