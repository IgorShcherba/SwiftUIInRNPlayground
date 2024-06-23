import {ViewStyle, requireNativeComponent} from 'react-native';

export const ColorView = requireNativeComponent(
  'ColorView',
) as unknown as React.FC<{
  color: string;
  width: number;
  height: number;
  style?: ViewStyle;
}>;
