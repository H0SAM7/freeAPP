import 'dart:ui';

import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:project2/Base/services/myservices.dart';

class Changelanguage extends GetxController {
  Locale? languge;
  Myservices myservices = Get.find();

  changeLang(String appLang) {
    Locale locale = Locale(appLang);
    myservices.sharedPreferences.setString("lang", appLang);
    Get.updateLocale(locale);
  }

  requestLocation() async {
    bool serviceEnabled;
    LocationPermission permission;
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Get.snackbar("Alert", "Please activate the location service");
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Get.snackbar("Alert",
            "Please activate the location service for the application");
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Get.snackbar("Alert",
          "The application cannot be used without activating the location service");
    }
  }

  @override
  void onInit() {
    requestLocation();
    String? applang = myservices.sharedPreferences.getString("lang");
    if (applang == "ar") {
      languge = const Locale("ar");
    } else if (applang == "en") {
      languge = const Locale("en");
    } else {
      languge = Locale(Get.deviceLocale!.languageCode);
    }

    super.onInit();
  }
}
