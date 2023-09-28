class CustomUser {
  String id = '';
  String email = '';
  String password = '';
  String username = '';
  String address = '';
  String birthDate = '';
  String gender = '';
  String phoneNumber = '';
  String documentId = '';
  String profileImage = '';

  CustomUser();

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = <String, dynamic>{};
    map['user_id'] = id;
    // map['email'] = email;
    // map['password'] = password;
    map['user_name'] = username;
    map['address'] = address;
    map['birth_date'] = birthDate;
    map['gender'] = gender;
    map['phone_number'] = phoneNumber;
    map['profile_image'] = profileImage;

    return map;
  }
}
