import 'package:get/get.dart';

class ContactorLoginController extends GetxController {
  gtToFirstPage() {
    Get.offAllNamed("/");
  }

  goToForgetPassword() {
    Get.toNamed("contractorforgetpassword");
  }

  goToSignIn() {
    Get.offNamed("contractorsignin");
  }
}
