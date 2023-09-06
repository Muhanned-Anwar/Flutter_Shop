import 'package:avatar_course2_5_shop/core/resources/manager_font_sizes.dart';
import 'package:avatar_course2_5_shop/core/resources/manager_icon_sizes.dart';
import 'package:avatar_course2_5_shop/core/resources/manager_strings.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../config/locale/locale_settings.dart';
import '../../../../../core/resources/manager_colors.dart';
import '../../../../../core/resources/manager_height.dart';
import '../../../../../core/resources/manager_raduis.dart';
import '../../../../../core/resources/manager_text_styles.dart';
import '../../../../../core/resources/manager_width.dart';
import '../../controller/locale_notifier_controller.dart';

class LocaleView extends StatelessWidget {
  const LocaleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          ManagerStrings.language,
          style: getMediumTextStyle(
            fontSize: ManagerFontSizes.s18,
          ),
        ),
      ),
      body: GetBuilder<LocaleNotifierController>(
        builder: (controller) {
          return Column(
            children: [
              SizedBox(
                height: ManagerHeight.h20,
              ),
              Container(
                width: double.infinity,
                height: ManagerHeight.h50,
                margin: EdgeInsets.symmetric(horizontal: ManagerWidth.w10),
                decoration: BoxDecoration(
                  border: Border.all(color: ManagerColors.grayLight),
                  borderRadius: BorderRadius.circular(ManagerRadius.r10),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton2(
                    dropdownStyleData: DropdownStyleData(
                      elevation: 0,
                      decoration: BoxDecoration(
                        color: ManagerColors.primaryColor,
                        borderRadius: BorderRadius.circular(ManagerRadius.r10),
                      ),
                    ),
                    customButton: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: ManagerWidth.w10,
                        ),
                         Icon(
                          Icons.language,
                          color: ManagerColors.black,
                        ),
                        SizedBox(width: ManagerWidth.w10),
                        Text(
                          'Lang',
                          style: getMediumTextStyle(
                            fontSize: ManagerIconSizes.s14,
                            color: ManagerColors.black,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          LocaleSettings
                                  .languages[controller.currentLanguage] ??
                              'ar',
                          style: getMediumTextStyle(
                            fontSize: ManagerIconSizes.s14,
                            color: ManagerColors.black,
                          ),
                        ),
                        SizedBox(width: ManagerWidth.w10),
                         Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: ManagerIconSizes.s16,
                          color: ManagerColors.white,
                        ),
                        SizedBox(
                          width: ManagerWidth.w10,
                        ),
                      ],
                    ),
                    items: controller.languagesList.values.map((String item) {
                      return DropdownMenuItem<String>(
                        value: item,
                        child: Text(
                          item,
                          style: getMediumTextStyle(
                            fontSize: ManagerIconSizes.s14,
                            color: ManagerColors.white,
                          ),
                        ),
                      );
                    }).toList(),
                    isExpanded: true,
                    value: LocaleSettings.languages[controller.currentLanguage],
                    onChanged: (value) {
                      for (var entry in controller.languagesList.entries) {
                        if (entry.value == value) {
                          controller.changeLanguage(
                            context: context,
                            languageCode: entry.key,
                          );
                        }
                      }
                    },
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
