import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project2/Base/funcation/validateinput.dart';
import 'package:project2/Controllers/User/authControllrt/forgetPassword/forgetpassword_controller.dart';
import 'package:project2/View/widget/shared/custombutton.dart';
import 'package:project2/View/widget/shared/customlargetext.dart';
import 'package:project2/View/widget/auth/customsmalltext.dart';
import 'package:project2/View/widget/auth/customtextformfiledsign.dart';
import 'package:project2/View/widget/custombackgroundcolorsign.dart';

class UserForgetPassword extends StatelessWidget {
  const UserForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    UserForgetpasswordController controller =
        Get.put(UserForgetpasswordController());
    return Scaffold(
        body: CustomBackgroundColorsign(
      child: ListView(
        children: [
          Form(
            key: controller.mykey,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Column(
                children: [
                  const CustomLargeText(
                    text: "Foreget Password",
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const CustomSmallText(
                    text: "Enter Your Email To Proceed",
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  CustomtTextFormFieldSign(
                    controller: controller.email,
                    hintText: "Enter Your Email",
                    icon: Icons.email_outlined,
                    validator: (val) {
                      return validInput(val!, "email", 30, 12);
                    },
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomButton(
                    text: "Check",
                    onPressed: () {
                      controller.goToVerifyCode();
                    },
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
