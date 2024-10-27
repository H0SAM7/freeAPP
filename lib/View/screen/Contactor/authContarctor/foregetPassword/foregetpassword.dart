import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project2/Controllers/Contractor/authController/forgetPassword/forgetpassword_controller.dart';
import 'package:project2/View/widget/shared/custombutton.dart';
import 'package:project2/View/widget/auth/customcontainercircular.dart';
import 'package:project2/View/widget/shared/customlargetext.dart';
import 'package:project2/View/widget/auth/customsmalltext.dart';
import 'package:project2/View/widget/auth/customtextformfiledsign.dart';
import 'package:project2/View/widget/custombackgroundcolorsign.dart';

class ContactorForgetPassword extends StatelessWidget {
  const ContactorForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ContractorForgetpasswordController controller =
        Get.put(ContractorForgetpasswordController());
    return Scaffold(
        body: CustomBackgroundColorsign(
      child: ListView(
        children: [
          Column(
            children: [
              Container(
                alignment: Alignment.topRight,
                padding: const EdgeInsets.only(right: 10),
                child: const CustomContainerCircular(),
              ),
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
                controller:  TextEditingController(),
                hintText: "Enter Your Email",
                icon: Icons.email_outlined,
                onPressed: () {},
                  validator: (val) {
                  return "";
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
                  controller.goToVerifyCodePass();
                },
              ),
            ],
          )
        ],
      ),
    ));
  }
}
