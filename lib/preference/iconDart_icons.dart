// Place fonts/iconDart.ttf in your fonts/ directory and
// add the following to your pubspec.yaml
// flutter:
//   fonts:
//    - family: iconDart
//      fonts:
//       - asset: fonts/iconDart.ttf
import 'package:flutter/widgets.dart';

class IconDart {
  IconDart._();

  static const String _fontFamily = 'iconDart';

  static const IconData filterr = IconData(0xe902, fontFamily: _fontFamily);
  static const IconData carticon = IconData(0xe900, fontFamily: _fontFamily);
  static const IconData filtericon = IconData(0xe901, fontFamily: _fontFamily,);
  static const IconData searchicon = IconData(0xe903, fontFamily: _fontFamily);
  static const IconData heart = IconData(0xe9da, fontFamily: _fontFamily);
}
