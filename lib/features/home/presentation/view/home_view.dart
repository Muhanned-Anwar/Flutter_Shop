import 'package:avatar_course2_5_shop/core/constants.dart';
import 'package:avatar_course2_5_shop/core/resources/manager_assets.dart';
import 'package:avatar_course2_5_shop/core/resources/manager_colors.dart';
import 'package:avatar_course2_5_shop/core/resources/manager_font_sizes.dart';
import 'package:avatar_course2_5_shop/core/resources/manager_height.dart';
import 'package:avatar_course2_5_shop/core/resources/manager_icon_sizes.dart';
import 'package:avatar_course2_5_shop/core/resources/manager_raduis.dart';
import 'package:avatar_course2_5_shop/core/resources/manager_strings.dart';
import 'package:avatar_course2_5_shop/core/resources/manager_text_styles.dart';
import 'package:avatar_course2_5_shop/core/resources/manager_width.dart';
import 'package:avatar_course2_5_shop/features/home/presentation/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ManagerColors.homeScaffoldBackGround,
      appBar: AppBar(
        backgroundColor: ManagerColors.transparent,
        elevation: Constants.appBarElevation,
        title: Text(
          ManagerStrings.home.toUpperCase(),
          style: getBoldTextStyle(
            fontSize: ManagerFontSizes.s18,
          ),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            size: ManagerIconSizes.s30,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.qr_code_scanner,
              size: ManagerIconSizes.s30,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.remove_shopping_cart,
              size: ManagerIconSizes.s30,
            ),
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsetsDirectional.only(
          start: ManagerWidth.w20,
        ),
        child: GetBuilder<HomeController>(builder: (controller) {
          return Column(
            children: [
              SizedBox(height: ManagerHeight.h12),
              Container(
                decoration: BoxDecoration(
                    color: ManagerColors.white,
                    borderRadius: BorderRadius.circular(ManagerRadius.r100)),
                margin: EdgeInsetsDirectional.only(
                  end: ManagerWidth.w20,
                ),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.search),
                    ),
                    SizedBox(width: ManagerWidth.w16),
                    Expanded(
                        child: Text(
                      'Search',
                      style: getMediumTextStyle(color: ManagerColors.gray),
                    )),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.filter_list_rounded,
                        color: ManagerColors.primaryColor,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: ManagerHeight.h12),
              SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: ManagerHeight.h100,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Container(
                            width: 100,
                            height: 100,
                            margin: EdgeInsetsDirectional.only(
                                end: ManagerWidth.w8),
                            decoration: BoxDecoration(
                              color: ManagerColors.white,
                              borderRadius: BorderRadius.circular(
                                ManagerRadius.r16,
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Image.asset(ManagerAssets.category, width: 50, height: 50,),
                                Text('Name', style: getMediumTextStyle(),)
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              )
            ],
          );
        }),
      ),
    );
  }
}
