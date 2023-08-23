class CategoryModel {
  int id;
  String name;
  String banner;
  String icon;
  int numberOfChildren;
  Links links;

  CategoryModel({
    required this.id,
    required this.name,
    required this.banner,
    required this.icon,
    required this.numberOfChildren,
    required this.links,
  });
}

class Links {
  String products;
  String subCategories;

  Links({
    required this.products,
    required this.subCategories,
  });
}
