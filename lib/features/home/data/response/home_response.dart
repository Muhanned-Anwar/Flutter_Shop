class HomeResponse {
  List<HomeDataResponse>? data;
  bool? success;
  int? status;

  HomeResponse({this.data, this.success, this.status});

  HomeResponse.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <HomeDataResponse>[];
      json['data'].forEach((v) {
        data!.add(HomeDataResponse.fromJson(v));
      });
    }
    success = json['success'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['success'] = success;
    data['status'] = status;
    return data;
  }
}

class HomeDataResponse {
  int? id;
  String? name;
  List<String>? photos;
  String? thumbnailImage;
  double? basePrice;
  double? baseDiscountedPrice;
  int? todaysDeal;
  int? featured;
  String? unit;
  int? discount;
  String? discountType;
  int? rating;
  int? sales;
  HomeResponseLinks? links;

  HomeDataResponse(
      {this.id,
      this.name,
      this.photos,
      this.thumbnailImage,
      this.basePrice,
      this.baseDiscountedPrice,
      this.todaysDeal,
      this.featured,
      this.unit,
      this.discount,
      this.discountType,
      this.rating,
      this.sales,
      this.links});

  HomeDataResponse.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    photos = json['photos'].cast<String>();
    thumbnailImage = json['thumbnail_image'];
    basePrice = double.parse(json['base_price'].toString());
    baseDiscountedPrice = double.parse(json['base_discounted_price'].toString());
    todaysDeal = json['todays_deal'];
    featured = json['featured'];
    unit = json['unit'];
    discount = json['discount'];
    discountType = json['discount_type'];
    rating = json['rating'];
    sales = json['sales'];
    links = json['links'] != null
        ? HomeResponseLinks.fromJson(json['links'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['photos'] = photos;
    data['thumbnail_image'] = thumbnailImage;
    data['base_price'] = basePrice;
    data['base_discounted_price'] = baseDiscountedPrice;
    data['todays_deal'] = todaysDeal;
    data['featured'] = featured;
    data['unit'] = unit;
    data['discount'] = discount;
    data['discount_type'] = discountType;
    data['rating'] = rating;
    data['sales'] = sales;
    if (links != null) {
      data['links'] = links!.toJson();
    }
    return data;
  }
}

class HomeResponseLinks {
  String? details;
  String? reviews;
  String? related;

  HomeResponseLinks({this.details, this.reviews, this.related});

  HomeResponseLinks.fromJson(Map<String, dynamic> json) {
    details = json['details'];
    reviews = json['reviews'];
    related = json['related'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['details'] = details;
    data['reviews'] = reviews;
    data['related'] = related;
    return data;
  }
}
