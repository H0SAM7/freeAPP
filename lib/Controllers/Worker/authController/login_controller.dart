import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:project2/Base/class/inquirystatus.dart';
import 'package:project2/Base/constant/appcolors.dart';
import 'package:project2/Base/funcation/respondingrequest.dart';
import 'package:project2/Base/services/myservices.dart';
import 'package:project2/Model/data/worker/auth/workerlogin_data.dart';

class WorkerLoginController extends GetxController {
  GlobalKey<FormState> mykey1 = GlobalKey<FormState>();
  GlobalKey<FormState> mykey2 = GlobalKey<FormState>();
  late TextEditingController email;
  late TextEditingController password;
  late String inquiryStatus;
  bool obscure = true;
  WorkerLoginData workerLoginData = WorkerLoginData(Get.find());
  Myservices myservices = Get.find();
  @override
  void onInit() {
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  void onChangeEmail(String val) {
    if (mykey1.currentState!.validate()) {
      email.text = val;
    }
  }

  void onChangepassword(String val) {
    if (mykey2.currentState!.validate()) {
      password.text = val;
    }
  }

  showpassword() {
    obscure = !(obscure);
    update();
  }

  gtToFirstPage() {
    Get.offAllNamed("/");
  }

  goToForgetPassword() {
    Get.toNamed("workerforgetpassword");
  }

  goToSignIn() {
    Get.offNamed("workersignin");
  }

  goToHome() async{
    inquiryStatus = InquiryStatus.lodaing;
    var request = await workerLoginData.workerLoginData(email.text, password.text);
    inquiryStatus = respondingRequest(request);
    print(request);
    if (InquiryStatus.success == inquiryStatus) {
      if (request['status'] == "success") {
        myservices.sharedPreferences
            .setString("username", request["input"]["user_name"]);
        myservices.sharedPreferences
            .setString("customeremail", request["input"]["worker_email"]);
        myservices.sharedPreferences
            .setString("customerfirstname", request["input"]["first_name"]);
        myservices.sharedPreferences.setString("myMiddelWere", "3");
        //
        Get.offNamed("usercahthome");
      } else {
        Get.defaultDialog(
            title: "Alert",
            middleText: "The account dose not exit",
            titleStyle: const TextStyle(
                color: Appcolors.primaryColor, fontWeight: FontWeight.bold),
            middleTextStyle: const TextStyle(fontSize: 17),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 20));
        InquiryStatus.sereverFailure;
      }
    }
  }


}

