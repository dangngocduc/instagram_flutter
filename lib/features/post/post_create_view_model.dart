import 'dart:developer' as developer;

import 'package:flutter/foundation.dart';

class PostCreateViewModel extends ChangeNotifier {
  static const TAG = 'PostCreateViewModel';

  List<String> locationSuggest = ['Ha Noi', 'Bac Ninh', 'Hai Phong', 'Bac Giang', 'Que Vo'];

  String currentLocation;

  bool isShareFacebook = false;

  bool isShareTwitter = false;

  bool isShareTumblr = false;

  void setCurrentLocation(String location) {
    currentLocation = location;
    notifyListeners();
  }

  void enableSocialShare(SocialShare type, bool value) {
    switch(type) {
      case SocialShare.FACEBOOK:
        isShareFacebook = value;
        break;
      case SocialShare.TWITTER:
        isShareTwitter = value;
        break;
      case SocialShare.TUMBLR:
        isShareTumblr = value;
        break;
    }
    notifyListeners();
  }
}

enum SocialShare {
  FACEBOOK, TWITTER, TUMBLR
}