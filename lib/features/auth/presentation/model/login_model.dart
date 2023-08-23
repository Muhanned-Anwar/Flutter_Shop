class LoginModel {
  bool result;
  String message;
  String accessToken;
  String tokenType;
  String expiresAt;
  User user;

  LoginModel({
    required this.result,
    required this.message,
    required this.accessToken,
    required this.tokenType,
    required this.expiresAt,
    required this.user,
  });
}

class User {
  int id;
  String type;
  String name;
  String email;
  String avatar;
  String avatarOriginal;
  String phone;

  User({
    required this.id,
    required this.type,
    required this.name,
    required this.email,
    required this.avatar,
    required this.avatarOriginal,
    required this.phone,
  });
}
