import 'package:chapter_6_practical/values/exports.dart';

mixin MyConstants {
  static final MediaQueryData _mediaQueryData =
      MediaQueryData.fromWindow(WidgetsBinding.instance.window);
  static final width = _mediaQueryData.size.width;
  static final height = _mediaQueryData.size.height;
  static final size = _mediaQueryData.size;

  static Orientation orientation = _mediaQueryData.orientation;

  static const paddingAll = EdgeInsets.all(10.0);
  static const paddingSym = EdgeInsets.symmetric(horizontal: 10, vertical: 20);
  static const marginAll = EdgeInsets.all(20.0);
  static const marginSym = EdgeInsets.symmetric(horizontal: 15, vertical: 05);
  static const borderRadius = BorderRadius.all(Radius.circular(25));
}
