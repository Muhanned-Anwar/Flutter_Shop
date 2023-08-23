import 'package:avatar_course2_5_shop/core/constants.dart';
import 'package:avatar_course2_5_shop/core/extension/extensions.dart';
import 'package:avatar_course2_5_shop/features/auth/data/response/login_response.dart';
import 'package:avatar_course2_5_shop/features/auth/presentation/model/login_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppSettingsSharedPreferences {
  static final _instance = AppSettingsSharedPreferences._internal();
  late SharedPreferences _sharedPreferences;

  AppSettingsSharedPreferences._internal();

  factory AppSettingsSharedPreferences() {
    return _instance;
  }

  Future<void> initPreferences() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  clear() {
    _sharedPreferences.clear();
  }

  Future<void> saveViewedOutBoarding() async {
    await _sharedPreferences.setBool(KeyConstants.outBoardingViewedKey, true);
  }

  bool get outBoardingViewed =>
      _sharedPreferences.getBool(KeyConstants.outBoardingViewedKey).onNull();

  Future<void> setDefaultLocale(String lang) async {
    await _sharedPreferences.setString(KeyConstants.localeKey, lang);
  }

  String get defaultLocale =>
      _sharedPreferences.getString(KeyConstants.localeKey).parseLocale();

  Future<void> setToken(String token) async {
    await _sharedPreferences.setString(KeyConstants.token, token);
  }

  Future<void> saveUserInfo(User user) async {
    await _sharedPreferences.setInt(
      KeyConstants.userId,
      user.id,
    );
    await _sharedPreferences.setString(
      KeyConstants.userType,
      user.type,
    );
    await _sharedPreferences.setString(
      KeyConstants.userName,
      user.name,
    );
    await _sharedPreferences.setString(
      KeyConstants.userEmail,
      user.email,
    );
    await _sharedPreferences.setString(
      KeyConstants.userAvatar,
      user.avatar,
    );
    await _sharedPreferences.setString(
      KeyConstants.userAvatarOriginal,
      user.avatarOriginal,
    );
    await _sharedPreferences.setString(
      KeyConstants.userPhone,
      user.phone,
    );
  }

  String get defaultToken =>
      _sharedPreferences.getString(KeyConstants.token).onNull();

  Future<void> setLoggedIn() async {
    await _sharedPreferences.setBool(KeyConstants.loggedIn, true);
  }

  bool get loggedIn =>
      _sharedPreferences.getBool(KeyConstants.loggedIn).onNull();
}
