import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../core/resources/manager_font_sizes.dart';
import '../../../../../core/resources/manager_height.dart';
import '../../../../../core/resources/manager_text_styles.dart';
import '../../../../../core/resources/manager_width.dart';
import '../../controller/home_controller.dart';
import '../../model/home_model.dart';

class ProductCardItem extends StatelessWidget {
  const ProductCardItem({
    super.key,
    required this.item,
  });

  final HomeDataModel item;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      return InkWell(
        onTap: () {
          controller.productDetails(context);
        },
        child: Container(
          margin: EdgeInsets.zero,
          padding: EdgeInsets.zero,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                item.thumbnailImage,
                fit: BoxFit.cover,
                width: ManagerWidth.w130,
                height: ManagerHeight.h120,
              ),
              const SizedBox(height: 10),
              Text(
                item.name,
                style: getMediumTextStyle(),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
              Text(
                controller.productPrice(item.basePrice.toString(), item.unit),
                style: getMediumTextStyle(),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 16,
                  ),
                  Text(
                    controller.productRating(
                      item.rating.toString(),
                    ),
                    style: getMediumTextStyle(
                      fontSize: ManagerFontSizes.s12,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ],
              )
            ],
          ),
        ),
      );
    });
  }
}
