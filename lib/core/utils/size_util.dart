import 'package:flutter_screenutil/flutter_screenutil.dart';

class SizeUtil {
  // static ScreenUtil screenUtil = ScreenUtil();

  // static double setWidth(double width) {
  //   return screenUtil.setWidth(width);
  // }

  static double setWidth(double width) {
    return width.w;
  }

  static double setHeight(double height) {
    return height.h;
  }

  static double setRadius(double radius) {
    return radius.r;
  }

  static double setFontSize(double fontSize) {
    return fontSize.sp;
  }
}
