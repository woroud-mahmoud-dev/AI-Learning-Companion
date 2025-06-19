extension EmailValidator on String {
  bool isValidEmail() {
    return RegExp(
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$',
    ).hasMatch(this);
  }
}

extension PhoneValidator on String {
  bool isValidPhone() {
    String pattern = r"^09[0-9]{8}$";
    RegExp regExp = RegExp(pattern);

    if (regExp.hasMatch(this)) {
      return true;
    } else {
      return false;
    }
  }
}

extension PasswordValidator on String {
  bool isValidPassword() {
    if (length > 5) {
      return true;
    } else {
      return false;
    }
  }

  bool isValidName() {
    if (length > 2) {
      return true;
    } else {
      return false;
    }
  }
}

extension AgeValidator on DateTime {
  bool isValidAge() {
    if (DateTime.now().year - year > 17) {
      return true;
    } else {
      return false;
    }
  }
}

extension IDValidator on String {
  bool isValidID() {
    if (length == 11) {
      return true;
    } else {
      return false;
    }
  }
}

extension FacebookValidator on String {
  bool isValidFacebook() {
    String pattern =
        r"(?:(?:http|https):\/\/)?(?:www.)?facebook.com\/(?:(?:\w)*#!\/)?(?:pages\/)?(?:[?\w\-]*\/)?(?:profile.php\?id=(?=\d.*))?([\w\-]*)?";
    RegExp regExp = RegExp(pattern);

    if (regExp.hasMatch(this)) {
      return true;
    } else {
      return false;
    }
  }
}

extension InstagramValidator on String {
  bool isValidInstagram() {
    String instagram =
        r"(/(?:(?:http|https):\/\/)?(?:www.)?(?:instagram.com|instagr.am|instagr.com)\/(\w+)/igm)?";
    RegExp regExp = RegExp(instagram);

    if (regExp.hasMatch(this)) {
      return true;
    } else {
      return false;
    }
  }
}

extension WebSiteValidator on String {
  bool isValidWebsite() {
    String pattern =
        r'^((?:.|\n)*?)((http:\/\/www\.|https:\/\/www\.|http:\/\/|https:\/\/)?[a-z0-9]+([\-\.]{1}[a-z0-9]+)([-A-Z0-9.]+)(/[-A-Z0-9+&@#/%=~_|!:,.;]*)?(\?[A-Z0-9+&@#/%=~_|!:‌​,.;]*)?)';
    RegExp regExp = RegExp(pattern);

    if (regExp.hasMatch(this)) {
      return true;
    } else {
      return false;
    }
  }
}

extension UrlValidator on String {
  bool isValidUrl() {
    String pattern =
        r"((https?:www\.)|(https?:\/\/)|(www\.))[-a-zA-Z0-9@:%._\+~#=]{1,256}\.[a-zA-Z0-9]{1,6}(\/[-a-zA-Z0-9()@:%_\+.~#?&\/=]*)?";

    RegExp regExp = RegExp(pattern);

    if (regExp.hasMatch(this)) {
      return true;
    } else {
      return false;
    }
  }
}
