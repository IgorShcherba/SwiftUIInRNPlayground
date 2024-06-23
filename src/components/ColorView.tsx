import React from 'react-native';
import {ColorView as ColorViewNative} from './native/ColorView';

export const ColorView = () => {
  return <ColorViewNative color="#00FFFF" width={400} height={500} />;
};
