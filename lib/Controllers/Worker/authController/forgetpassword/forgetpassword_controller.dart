import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class WorkerForgetpasswordController extends GetxController {
  GlobalKey<FormState> mykey = GlobalKey<FormState>();
  late TextEditingController email;

  @override
  void onInit() {
    email = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    super.dispose();
  }

  goToVerifyCodePass() {
    if (mykey.currentState!.validate()) {
      Get.offNamed("workerverifycodeforgetpass");
    }
  }
}
