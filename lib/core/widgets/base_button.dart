import 'package:flutter/material.dart';
import '../resources/manager_colors.dart';
import '../resources/manager_font_sizes.dart';
import '../resources/manager_font_weight.dart';
import '../resources/manager_height.dart';
import '../resources/manager_strings.dart';
import '../resources/manager_width.dart';

class BaseButton extends StatelessWidget {
  final String title;
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
    this.title = ManagerStrings.start,
    this.isVisibleIcon = false,
    this.width = ManagerWidth.w64,
    this.height = ManagerHeight.h50,
    this.bgColor = ManagerColors.primaryColor,
    this.textStyle,
    this.elevation = 2,
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
          const Spacer(
            flex: 5,
          ),
          Text(
            title,
            style: textStyle,
          ),
          const Spacer(
            flex: 4,
          ),
          Visibility(
            visible: isVisibleIcon,
            child: Icon(
              Icons.arrow_forward,
              color: ManagerColors.white,
            ),
          )
        ],
      ),
    );
  }
}
