import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project2/Controllers/Contractor/authController/login_controller.dart';
import 'package:project2/Base/constant/appcolors.dart';
import 'package:project2/View/widget/shared/custombutton.dart';
import 'package:project2/View/widget/auth/customcontainercircular.dart';
import 'package:project2/View/widget/shared/customlargetext.dart';
import 'package:project2/View/widget/auth/customsmalltext.dart';
import 'package:project2/View/widget/auth/customtextformfiledsign.dart';
import 'package:project2/View/widget/auth/foregetpasswordtext.dart';
import 'package:project2/View/widget/custombackgroundcolorsign.dart';

class ContactorLogin extends StatelessWidget {
  const ContactorLogin({super.key});

  @override
  Widget build(BuildContext context) {
    ContactorLoginController controller = Get.put(ContactorLoginController());
    return Scaffold(
        body: CustomBackgroundColorsign(
      child: ListView(
        children: [
          Column(
            children: [
              Container(
                alignment: Alignment.topRight,
                padding: const EdgeInsets.only(right: 10),
                child: CustomContainerCircular(
                  onTap: () {
                    controller.gtToFirstPage();
                  },
                ),
              ),
               CustomLargeText(
                text: "Log In".tr,
              ),
              const SizedBox(
                height: 10,
              ),
               CustomSmallText(
                text: "Enter Your Details To Proceed".tr,
              ),
              const SizedBox(
                height: 40,
              ),
              CustomtTextFormFieldSign(
                controller: TextEditingController(),
                hintText: "Enter Your Email".tr,
                icon: Icons.email_outlined,
                onPressed: () {},
                  validator: (val) {
                  return "";
                },
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 10,
              ),
              CustomtTextFormFieldSign(
                controller: TextEditingController(),
                hintText: "Enter Your Password".tr,
                icon: Icons.lock_outline,
                onPressed: () {},
                  validator: (val) {
                  return "";
                },
              ),
              const SizedBox(
                height: 15,
              ),
              ForegetpasswordText(
                text: ' Forgot password ? '.tr,
                onTap: () {
                  controller.goToForgetPassword();
                },
              ),
              const SizedBox(
                height: 100,
              ),
              CustomButton(
                text: "Login".tr,
                onPressed: () {},
              ),
              const SizedBox(
                height: 15,
              ),
              const SizedBox(
                height: 10,
              ),
               Text(
                "OR".tr,
                style: TextStyle(
                    color: Appcolors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              CustomButton(
                text: "Sign In ".tr,
                onPressed: () {
                  controller.goToSignIn();
                },
              ),
            ],
          )
        ],
      ),
    ));
  }
}
