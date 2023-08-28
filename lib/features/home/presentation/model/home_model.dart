class HomeModel {
  List<HomeDataModel> data;
  bool success;
  int status;

  HomeModel({
    required this.data,
    required this.success,
    required this.status,
  });
}

class HomeDataModel {
  int id;
  String name;
  List<String> photos;
  String thumbnailImage;
  double basePrice;
  double baseDiscountedPrice;
  int todaysDeal;
  int featured;
  String unit;
  int discount;
  String discountType;
  int rating;
  int sales;
  HomeModelLinks links;

  HomeDataModel({
    required this.id,
    required this.name,
    required this.photos,
    required this.thumbnailImage,
    required this.basePrice,
    required this.baseDiscountedPrice,
    required this.todaysDeal,
    required this.featured,
    required this.unit,
    required this.discount,
    required this.discountType,
    required this.rating,
    required this.sales,
    required this.links,
  });
}

class HomeModelLinks {
  String details;
  String reviews;
  String related;

  HomeModelLinks({
    required this.details,
    required this.reviews,
    required this.related,
  });
}
