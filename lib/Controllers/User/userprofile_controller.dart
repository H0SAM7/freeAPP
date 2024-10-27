import 'package:get/get.dart';
import 'package:project2/Base/localization/changelanguage.dart';
import 'package:project2/Base/services/myservices.dart';

class UserProfileController extends GetxController {
  String? language;
  Changelanguage c = Get.find();
  late String inquiryStatus;
  Myservices myservices = Get.find();
  String? username;
  String? firstname;

  @override
  void onInit() {
    initalUser();
    super.onInit();
  }

  initalUser() {
    username = myservices.sharedPreferences.getString("username");
    firstname = myservices.sharedPreferences.getString("customerfirstname");
  }

  chageArabic() {
    c.changeLang("ar");
    update();
  }

  changeEnglish() {
    c.changeLang("en");
    update();
  }

  goToaddress() {
    Get.toNamed("addresspage");
  }

  logout() {
    myservices.sharedPreferences.clear();
    Get.offAllNamed("userlogin");
  }
}
