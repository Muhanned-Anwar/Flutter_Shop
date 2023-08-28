class Review {
  int id;
  String name;
  String imgPath;
  double numStars;
  String time;
  String? content;

  Review({
    required this.id,
    required this.name,
    required this.imgPath,
    required this.numStars,
    required this.time,
    required this.content,
  });
}
