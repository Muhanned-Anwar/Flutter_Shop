import 'package:flutter/material.dart';
import '../../../../../core/resources/manager_colors.dart';
import '../../../../../core/resources/manager_font_sizes.dart';
import '../../../../../core/resources/manager_height.dart';
import '../../../../../core/resources/manager_raduis.dart';
import '../../../../../core/resources/manager_text_styles.dart';
import '../../../../../core/resources/manager_width.dart';
import '../../controller/home_controller.dart';
import '../../model/category_model.dart';

SizedBox categoriesList(HomeController controller) {
  return SizedBox(
    height: ManagerHeight.h100,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: controller.categories.length,
      itemBuilder: (context, index) {
        CategoryModel currentCategory = controller.categories[index];
        return Container(
          width: ManagerWidth.w110,
          height: ManagerHeight.h100,
          margin: EdgeInsetsDirectional.only(
            end: ManagerWidth.w8,
          ),
          decoration: BoxDecoration(
            color: ManagerColors.white,
            borderRadius: BorderRadius.circular(
              ManagerRadius.r16,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar(
                  backgroundImage: NetworkImage(
                    currentCategory.banner,
                  ),
                  radius: ManagerRadius.r24),
              SizedBox(
                height: ManagerHeight.h24,
                child: Text(
                  currentCategory.name,
                  style: getMediumTextStyle(
                    fontSize: ManagerFontSizes.s12,
                  ),
                ),
              )
            ],
          ),
        );
      },
    ),
  );
}
