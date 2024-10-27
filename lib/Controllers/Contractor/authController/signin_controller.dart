import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContactorSigninController extends GetxController {
  TextEditingController? username; 
  TextEditingController? firstname;
  TextEditingController? lastname; 
  TextEditingController? email;
  TextEditingController? password;
  TextEditingController? licenNum; 

  
  gtToFirstPage() {
    Get.offAllNamed("/");
  }

  goToLogin() {
    Get.toNamed("contractorlogin");
  }

  goToWorkerSignIn() {
    Get.toNamed("workersignin");
  }

   goToverifyCodesign() {
    Get.toNamed("contractorverifycodesign");
   }
}
