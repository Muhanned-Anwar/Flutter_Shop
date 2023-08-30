import 'product_details_data_brand_model.dart';
import 'product_details_data_choice_options_model.dart';
import 'product_details_data_photo_model.dart';

class ProductDetailsDataModel {
  int id;
  String name;
  String addedBy;
  int sellerId;
  int shopId;
  String shopName;
  String shopLogo;
  List<ProductDetailsDataPhotoModel> photos;
  String thumbnailImage;
  List<String> tags;
  List<ProductDetailsDataChoiceOptionsModel> choiceOptions;
  List<String> colors;
  bool hasDiscount;
  String strokedPrice;
  String mainPrice;
  double calculablePrice;
  String currencySymbol;
  int currentStock;
  String unit;
  double rating;
  int ratingCount;
  double earnPoint;
  String description;
  String videoLink;
  String link;
  ProductDetailsDataBrandModel brand;

  ProductDetailsDataModel({
   required this.id,
   required this.name,
   required this.addedBy,
   required this.sellerId,
   required this.shopId,
   required this.shopName,
   required this.shopLogo,
   required this.photos,
   required this.thumbnailImage,
   required this.tags,
   required this.choiceOptions,
   required this.colors,
   required this.hasDiscount,
   required this.strokedPrice,
   required this.mainPrice,
   required this.calculablePrice,
   required this.currencySymbol,
   required this.currentStock,
   required this.unit,
   required this.rating,
   required this.ratingCount,
   required this.earnPoint,
   required this.description,
   required this.videoLink,
   required this.link,
   required this.brand,
  });
}
