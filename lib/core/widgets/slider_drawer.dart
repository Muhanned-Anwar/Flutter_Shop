import 'package:avatar_course2_5_shop/core/resources/manager_colors.dart';
import 'package:avatar_course2_5_shop/core/resources/manager_font_sizes.dart';
import 'package:avatar_course2_5_shop/core/resources/manager_height.dart';
import 'package:avatar_course2_5_shop/core/resources/manager_text_styles.dart';
import 'package:avatar_course2_5_shop/features/home/presentation/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:slide_drawer/slide_drawer.dart';

class SliderDrawer extends StatelessWidget {
  const SliderDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      return Scaffold(
        backgroundColor: ManagerColors.primaryColor,
        body: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              SizedBox(height: ManagerHeight.h50,),
              Align(
                alignment: AlignmentDirectional.centerEnd,
                child: IconButton(
                  onPressed: () {
                    SlideDrawer.of(context)?.close();
                  },
                  icon: const Icon(
                    Icons.exit_to_app,
                  ),
                ),
              ),
              Text(
                controller.appSettingsSharedPreferences.userName,
                style: getBoldTextStyle(
                  fontSize: ManagerFontSizes.s20,
                  color: ManagerColors.white,
                ),
              ),
              SizedBox(height: ManagerHeight.h14),
              Text(
                controller.appSettingsSharedPreferences.userEmail,
                style: getRegularTextStyle(
                  fontSize: ManagerFontSizes.s18,
                  color: ManagerColors.white,
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      );
    });
  }
}
