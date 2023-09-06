extension NonNullInt on int? {
  int onNull() {
    if (this == null) {
      return 0;
    } else {
      return this!;
    }
  }

  int parseError() {
    if (this == null) {
      return 400;
    } else {
      return this!;
    }
  }
}

extension NonNullLocale on String? {
  String pareWithDefaultLocale() {
    if (this == null) {
      return 'ar';
    } else {
      return this!;
    }
  }
}

extension NonNullDouble on double? {
  double onNull() {
    if (this == null) {
      return 0;
    } else {
      return this!;
    }
  }
}

extension NonNullString on String? {
  String onNull() {
    if (this == null) {
      return '';
    } else {
      return this!;
    }
  }

  String parseLocale() {
    if (this == null) {
      return 'en';
    } else {
      return this!;
    }
  }
}

extension NonNullListString on List<String>? {
  List<String> onNull() {
    if (this == null) {
      return [];
    } else {
      return this!;
    }
  }
}


extension NonNullBoolean on bool? {
  bool onNull() {
    if (this == null) {
      return false;
    } else {
      return this!;
    }
  }
}
