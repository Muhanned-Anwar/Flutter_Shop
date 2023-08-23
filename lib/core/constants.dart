class Constants {
  static const double appBarElevation = 0;
  static const double designDeviceWidth = 375;
  static const double designDeviceHeight = 812;
  static const double elevationZero = 0;
  static const double baseButtonElevation = 2;
  static const int splashTime = 3;
  static const int baseButtonFirstSpacerFlex = 5;
  static const int baseButtonSecondSpacerFlex = 4;
  static const int pageViewSliderDuration = 300;
  static const bool baseButtonVisibleIcon = false;
  static const int outBoardingLastPage = 3;
  static const double dividerThickness = 0.7;
  static const double dividerIndentDefault = 1;
  static const double dividerEndIndentDefault = 1;
}

class KeyConstants {
  static const String outBoardingViewedKey = 'out_boarding_viewed';
  static const String localeKey = 'locale_key';
  static const String arabic = 'ar';
  static const String english = 'en';
  static const String arabicName = 'العربية';
  static const String englishName = 'English';
  static const String token = 'token';
  static const String loggedIn = 'logged_in';
  static const String user = 'user_';
  static const String userId = '${user}id';
  static const String userType = '${user}type';
  static const String userName = '${user}name';
  static const String userEmail = '${user}email';
  static const String userAvatar = '${user}avatar';
  static const String userAvatarOriginal = '${user}avatar_original';
  static const String userPhone = '${user}phone';
}

class ApiRequest {
  static const String baseUrl = 'http://e-commerce-selkroad.actit.ps';
  static const String api = '$baseUrl/api/v2';
  static const String apiAuth = '$api/auth';
  static const String login = '$apiAuth/login';
  static const String register = '$apiAuth/signup';
}


class ApiConstants {
  static const String email = 'email';
  static const String password = 'password';
  static const String confirmPassword = 'password_confirmation';
  static const String authName = 'name';
  static const String phone = 'phone';
  static const String registerBy = 'register_by';
  static const String acceptLanguage = 'Accept-Language';
  static const String errorMessage = 'message';
  static const String token = 'token';
}