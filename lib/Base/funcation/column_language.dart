import 'package:get/get.dart';
import 'package:project2/Base/services/myservices.dart';

culomnLanguge(en, ar) {
  Myservices myservices = Get.find();
  if (myservices.sharedPreferences.getString("lang") == "en") {
    return en;
  } else {
    return ar;
  }
}
