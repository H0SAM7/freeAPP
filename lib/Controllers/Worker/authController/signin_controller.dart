import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WorkerSigninController extends GetxController {
  GlobalKey<FormState> mykey = GlobalKey<FormState>();
  late TextEditingController licensenum;
  late TextEditingController username;
  late TextEditingController firstname;
  late TextEditingController lastname;
  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController contractorEmail;

  @override
  void onInit() {
    licensenum = TextEditingController();
    username = TextEditingController();
    firstname = TextEditingController();
    lastname = TextEditingController();
    email = TextEditingController();
    password = TextEditingController();
    contractorEmail = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    licensenum.dispose();
    lastname.dispose();
    username.dispose();
    firstname.dispose();
    lastname.dispose();
    email.dispose();
    password.dispose();
    contractorEmail.dispose();
    super.dispose();
  }

  gtToFirstPage() {
    Get.offAllNamed("/");
  }

  goTologin() {
    Get.offNamed("workerlogin");
  }

  goToVerifyCodeSign() {
    if (mykey.currentState!.validate()) {
      Get.toNamed("workerverifycodesign");
    }
  }
}
