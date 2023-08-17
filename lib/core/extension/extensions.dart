extension NonNullInt on int? {
  int onNull() {
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


extension NonNullBoolean on bool? {
  bool onNull() {
    if (this == null) {
      return false;
    } else {
      return this!;
    }
  }
}
