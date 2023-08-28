import 'package:avatar_course2_5_shop/core/constants.dart';
import 'package:avatar_course2_5_shop/core/resources/manager_colors.dart';
import 'package:avatar_course2_5_shop/core/resources/manager_font_sizes.dart';
import 'package:avatar_course2_5_shop/core/resources/manager_height.dart';
import 'package:avatar_course2_5_shop/core/resources/manager_icon_sizes.dart';
import 'package:avatar_course2_5_shop/core/resources/manager_raduis.dart';
import 'package:avatar_course2_5_shop/core/resources/manager_strings.dart';
import 'package:avatar_course2_5_shop/core/resources/manager_text_styles.dart';
import 'package:avatar_course2_5_shop/core/resources/manager_width.dart';
import 'package:avatar_course2_5_shop/features/home/presentation/controller/home_controller.dart';
import 'package:avatar_course2_5_shop/features/home/presentation/model/home_model.dart';
import 'package:avatar_course2_5_shop/features/home/presentation/view/widgets/category_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:slide_drawer/slide_drawer.dart';
import '../../../../core/widgets/slider_drawer.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SlideDrawer(
      drawer: const SliderDrawer(),
      child: Scaffold(
        backgroundColor: ManagerColors.homeScaffoldBackGround,
        appBar: HomeAppBar(
          appBar: AppBar(),
        ),
        body: Container(
          margin: EdgeInsetsDirectional.only(
            start: ManagerWidth.w20,
          ),
          child: GetBuilder<HomeController>(
            builder: (controller) {
              return Stack(
                children: [
                  ListView(
                    children: [
                      SizedBox(height: ManagerHeight.h56),
                      Column(
                        children: [
                          categoriesList(controller),
                          SizedBox(height: ManagerHeight.h20),
                          Container(
                            margin: EdgeInsetsDirectional.only(
                              end: ManagerWidth.w16,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  ManagerStrings.bestItems,
                                  style: getBoldTextStyle(),
                                ),
                                Container(
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
                              ],
                            ),
                          ),
                          SizedBox(height: ManagerHeight.h14),
                          Container(
                            height: ManagerHeight.h450,
                            width: ManagerWidth.w300,
                            alignment: Alignment.center,
                            margin: EdgeInsetsDirectional.only(
                              end: ManagerWidth.w12,
                            ),
                            child: GridView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: controller.bestItemsCard(
                                controller.homeModel.data.length,
                              ),
                              itemBuilder: (BuildContext context, int index) {
                                HomeDataModel homeDataModel =
                                    controller.homeModel.data[index];
                                return LayoutBuilder(
                                  builder: (
                                    BuildContext context,
                                    BoxConstraints constraints,
                                  ) {
                                    return Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          flex: 5,
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(
                                              ManagerRadius.r10,
                                            ),
                                            child: controller.image(
                                              courseAvatar: homeDataModel
                                                  .thumbnailImage
                                                  .toString(),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 2,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                homeDataModel.name,
                                                style: getMediumTextStyle(),
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 1,
                                              ),
                                              Text(
                                                controller.productPrice(
                                                  homeDataModel.basePrice
                                                      .toString(),
                                                ),
                                                style: getMediumTextStyle(
                                                  fontSize:
                                                      ManagerFontSizes.s12,
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    );
                                  },
                                );
                              },
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: ManagerWidth.w10,
                                mainAxisSpacing: ManagerHeight.h10,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: ManagerColors.white,
                      borderRadius: BorderRadius.circular(
                        ManagerRadius.r100,
                      ),
                    ),
                    margin: EdgeInsetsDirectional.only(
                      end: ManagerWidth.w20,
                      top: ManagerHeight.h4,
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
                            ManagerStrings.search,
                            style: getMediumTextStyle(
                              color: ManagerColors.gray,
                            ),
                          ),
                        ),
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
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  final AppBar appBar;

  const HomeAppBar({
    super.key,
    required this.appBar,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ManagerColors.transparent,
      elevation: Constants.appBarElevation,
      title: Text(
        ManagerStrings.home.toUpperCase(),
        style: getBoldTextStyle(
          fontSize: ManagerFontSizes.s18,
        ),
      ),
      leading: Builder(builder: (context) {
        return IconButton(
          onPressed: () {
            SlideDrawer.of(context)?.toggle();
          },
          icon: const Icon(
            Icons.menu,
            size: ManagerIconSizes.s30,
          ),
        );
      }),
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
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);
}
