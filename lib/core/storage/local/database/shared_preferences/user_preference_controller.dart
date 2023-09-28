import 'package:avatar_course2_5_shop/core/model/CustomUser.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserPreferenceController {
  static final UserPreferenceController _instance =
      UserPreferenceController._internal();

  late SharedPreferences _sharedPreferences;

  UserPreferenceController._internal();

  factory UserPreferenceController() {
    return _instance;
  }

  Future<void> initSharedPreferences() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  clear() {
    _sharedPreferences.clear();
  }

  Future<void> saveUserInformation({
   required CustomUser user,
   required String email,
   required String password,
  }) async {
    _sharedPreferences.setString('id', user.id);
    _sharedPreferences.setString('email', email);
    _sharedPreferences.setString('password', password);
    _sharedPreferences.setString('username', user.username);
    _sharedPreferences.setString('address', user.address);
    _sharedPreferences.setString('birthDate', user.birthDate);
    _sharedPreferences.setString('gender', user.gender);
    _sharedPreferences.setString('phoneNumber', user.phoneNumber);
    _sharedPreferences.setString('document_id', user.documentId);
    _sharedPreferences.setString('profile_image', user.profileImage);
  }
  Future<void> saveUserCountry({
   required String country,
  }) async {
    _sharedPreferences.setString('address', country);
  }

  Future<void> updatePassword(String password) async {
    _sharedPreferences.setString('password', password);
  }

  CustomUser get userInformation {
    CustomUser user = CustomUser();
    user.id = _sharedPreferences.getString('id')!;
    user.email = _sharedPreferences.getString('email')!;
    user.password = _sharedPreferences.getString('password')!;
    user.username = _sharedPreferences.getString('username')!;
    user.address = _sharedPreferences.getString('address')!;
    user.birthDate = _sharedPreferences.getString('birthDate')!;
    user.gender = _sharedPreferences.getString('gender')!;
    user.phoneNumber = _sharedPreferences.getString('phoneNumber')!;
    user.documentId = _sharedPreferences.getString('document_id')!;
    user.profileImage = _sharedPreferences.getString('profile_image')!;

    return user;
  }

  void logout() {
    _sharedPreferences.remove('id');
    _sharedPreferences.remove('email');
    _sharedPreferences.remove('password');
    _sharedPreferences.remove('username');
    _sharedPreferences.remove('address');
    _sharedPreferences.remove('birthDate');
    _sharedPreferences.remove('gender');
    _sharedPreferences.remove('phoneNumber');
    _sharedPreferences.remove('document_id');
    _sharedPreferences.remove('profile_image');
    _sharedPreferences.remove('logged_in_qr');

  }
}
