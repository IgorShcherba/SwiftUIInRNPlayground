import {StyleSheet, View} from 'react-native';
import React from 'react';
import SimpleNativeView from './native/SimpleView';

export const ExampleView = () => {
  return (
    <View style={styles.container}>
      <SimpleNativeView
        title="test"
        onPressed={e => {
          console.log('pressed', e.nativeEvent.data);
        }}
        style={styles.container}
      />
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
  },
});
