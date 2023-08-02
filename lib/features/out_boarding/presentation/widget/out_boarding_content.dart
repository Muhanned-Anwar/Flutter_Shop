import 'package:flutter/material.dart';
import '../../../../core/resources/manager_assets.dart';
import '../../../../core/resources/manager_colors.dart';
import '../../../../core/resources/manager_font_sizes.dart';
import '../../../../core/resources/manager_font_weight.dart';
import '../../../../core/resources/manager_height.dart';
import '../../../../core/resources/manager_strings.dart';

class OutBoardingContent extends StatelessWidget {
  final String image;
  final String title;
  final String subTitle;

  const OutBoardingContent({
    super.key,
    this.image = ManagerAssets.outBoarding1,
    this.title = ManagerStrings.outBoardingTitle1,
    this.subTitle = ManagerStrings.outBoardingSubTitle1,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ManagerHeight.h500,
      child: Column(
        children: [
          Image.asset(
            image,
            height: ManagerHeight.h220,
          ),
          const SizedBox(
            height: ManagerHeight.h90,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: ManagerFontSizes.s26,
              fontWeight: ManagerFontWeight.bold,
              color: ManagerColors.outBoardingTitleColor,
            ),
          ),
          const SizedBox(
            height: ManagerHeight.h40,
          ),
          SizedBox(
            height: ManagerHeight.h100,
            child: Text(
              subTitle,
              style: TextStyle(
                fontSize: ManagerFontSizes.s18,
                fontWeight: ManagerFontWeight.regular,
                color: ManagerColors.outBoardingTitleColor,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: ManagerHeight.h40,
          ),
        ],
      ),
    );
  }
}
