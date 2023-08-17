import 'package:avatar_course2_5_shop/core/constants.dart';
import 'package:flutter/material.dart';
import '../resources/manager_colors.dart';
import '../resources/manager_font_sizes.dart';
import '../resources/manager_font_weight.dart';
import '../resources/manager_height.dart';
import '../resources/manager_strings.dart';
import '../resources/manager_width.dart';

class BaseButton extends StatelessWidget {
  final int? spacerFlex;
  final String? title;
  final bool isVisibleIcon;
  final double width;
  final double height;
  final Color bgColor;
  final double elevation;
  void Function() onPressed;

  TextStyle? textStyle = TextStyle(
    fontSize: ManagerFontSizes.s16,
    fontWeight: ManagerFontWeight.regular,
    color: ManagerColors.white,
  );

  BaseButton({
    super.key,
    this.title,
    this.isVisibleIcon = Constants.baseButtonVisibleIcon,
    this.width = ManagerWidth.w64,
    this.height = ManagerHeight.h50,
    this.bgColor = ManagerColors.primaryColor,
    this.textStyle,
    this.elevation = Constants.baseButtonElevation,
    this.spacerFlex,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        elevation: elevation,
        backgroundColor: bgColor,
        minimumSize: Size(
          width,
          height,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Spacer(
            flex: spacerFlex ?? Constants.baseButtonFirstSpacerFlex,
          ),
          Text(
            title ?? ManagerStrings.start,
            style: textStyle,
          ),
          Spacer(
            flex: spacerFlex ?? Constants.baseButtonSecondSpacerFlex,
          ),
          Visibility(
            visible: isVisibleIcon,
            child: Icon(
              Icons.arrow_forward,
              color: ManagerColors.white,
            ),
          ),
        ],
      ),
    );
  }
}
