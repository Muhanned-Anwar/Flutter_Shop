class CategoryResponse {
  int? id;
  String? name;
  String? banner;
  String? icon;
  int? numberOfChildren;
  CategoryResponseLinks? links;

  CategoryResponse({
    this.id,
    this.name,
    this.banner,
    this.icon,
    this.numberOfChildren,
    this.links,
  });

  CategoryResponse.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    banner = json['banner'];
    icon = json['icon'];
    numberOfChildren = json['number_of_children'];
    links = json['links'] != null ? CategoryResponseLinks.fromJson(json['links']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['banner'] = banner;
    data['icon'] = icon;
    data['number_of_children'] = numberOfChildren;
    if (links != null) {
      data['links'] = links!.toJson();
    }
    return data;
  }
}

class CategoryResponseLinks {
  String? products;
  String? subCategories;

  CategoryResponseLinks({this.products, this.subCategories});

  CategoryResponseLinks.fromJson(Map<String, dynamic> json) {
    products = json['products'];
    subCategories = json['sub_categories'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['products'] = products;
    data['sub_categories'] = subCategories;
    return data;
  }
}
