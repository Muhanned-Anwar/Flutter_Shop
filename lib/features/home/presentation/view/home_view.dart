import 'package:avatar_course2_5_shop/core/resources/manager_colors.dart';
import 'package:avatar_course2_5_shop/core/resources/manager_font_sizes.dart';
import 'package:avatar_course2_5_shop/core/resources/manager_height.dart';
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
import 'widgets/home_app_bar.dart';
import 'widgets/product_card_item.dart';
import 'widgets/section_title.dart';

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
                          sectionTitle(),
                          Container(
                            height: ManagerHeight.h320,
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
                                return InkWell(
                                  onTap: () {
                                    controller.productDetails(context, homeDataModel.id);
                                  },
                                  child: LayoutBuilder(
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
                                              borderRadius:
                                                  BorderRadius.circular(
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
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  maxLines: 1,
                                                ),
                                                Text(
                                                  controller.productPrice(
                                                    homeDataModel.basePrice
                                                        .toString(),
                                                      homeDataModel.unit
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
                                  ),
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

                          // Features Items In GridView
                          sectionTitle(
                            title: ManagerStrings.features,
                          ),
                          Container(
                            height: ManagerHeight.h210,
                            margin: const EdgeInsets.only(left: 20),
                            child: GridView.builder(
                              scrollDirection: Axis.horizontal,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 1,
                                mainAxisSpacing: 0,
                                childAspectRatio: 1.35,
                              ),
                              itemBuilder: (context, index) {
                                HomeDataModel item =
                                    controller.featuredProducts[index];
                                return ProductCardItem(item: item);
                              },
                              itemCount: controller.featuredProducts.length,
                            ),
                          ),

                          // Discounted Items In GridView
                          sectionTitle(
                            title: ManagerStrings.discounted,
                          ),
                          Container(
                            height: ManagerHeight.h210,
                            margin: const EdgeInsets.only(left: 20),
                            child: GridView.builder(
                              scrollDirection: Axis.horizontal,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 1,
                                mainAxisSpacing: 0,
                                childAspectRatio: 1.35,
                              ),
                              itemBuilder: (context, index) {
                                HomeDataModel item =
                                    controller.discountedProducts[index];
                                return ProductCardItem(item: item);
                              },
                              itemCount: controller.discountedProducts.length,
                            ),
                          ),
                        ],
                      ),
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