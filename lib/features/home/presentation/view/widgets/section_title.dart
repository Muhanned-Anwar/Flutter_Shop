import 'package:flutter/material.dart';
import '../../../../../core/resources/manager_colors.dart';
import '../../../../../core/resources/manager_font_sizes.dart';
import '../../../../../core/resources/manager_height.dart';
import '../../../../../core/resources/manager_raduis.dart';
import '../../../../../core/resources/manager_strings.dart';
import '../../../../../core/resources/manager_text_styles.dart';
import '../../../../../core/resources/manager_width.dart';

Container sectionTitle({
  String? title,
  Function()? onPressed,
}) {
  return Container(
    margin: EdgeInsetsDirectional.only(
      end: ManagerWidth.w16,
      bottom: ManagerHeight.h14,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title ?? ManagerStrings.bestItems,
          style: getBoldTextStyle(),
        ),
        InkWell(
          onTap: onPressed ?? () {},
          child: Container(
            height: ManagerHeight.h26,
            width: ManagerWidth.w80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                ManagerRadius.r100,
              ),
              border: Border.all(
                color: ManagerColors.gray,
              ),
            ),
            alignment: Alignment.center,
            child: Text(
              ManagerStrings.showMore,
              style: getBoldTextStyle(
                fontSize: ManagerFontSizes.s10,
                color: ManagerColors.gray,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}