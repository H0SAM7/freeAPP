import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project2/Controllers/Contractor/authController/signin_controller.dart';
import 'package:project2/View/widget/shared/custombutton.dart';
import 'package:project2/View/widget/auth/customcontainercircular.dart';
import 'package:project2/View/widget/shared/customlargetext.dart';
import 'package:project2/View/widget/auth/customsingorlogin.dart';
import 'package:project2/View/widget/auth/customsmalltext.dart';
import 'package:project2/View/widget/auth/customtextformfiledsign.dart';
import 'package:project2/View/widget/custombackgroundcolorsign.dart';

class ContractorSignIn extends StatelessWidget {
  const ContractorSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    ContactorSigninController controller = Get.put(ContactorSigninController());
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
              const CustomLargeText(
                text: "Enter Your Details",
              ),
              const SizedBox(
                height: 10,
              ),
              const CustomSmallText(
                text: "Tell Us More About Yourself",
              ),
              const SizedBox(
                height: 40,
              ),
              CustomtTextFormFieldSign(
                controller: TextEditingController(),
                hintText: "Enter Your License",
                icon: Icons.assignment_ind_outlined,
                onPressed: () {},
                  validator: (val) {
                  return "";
                },
              ),
              const SizedBox(
                height: 10,
              ),
              CustomtTextFormFieldSign(
                 controller: TextEditingController(),
                hintText: "Enter Your Username",
                icon: Icons.person_outline,
                onPressed: () {},
                  validator: (val) {
                  return "";
                },
              ),
              const SizedBox(
                height: 10,
              ),
              CustomtTextFormFieldSign(
                 controller: TextEditingController(),
                hintText: "Enter Your Frist Name",
                icon: Icons.person_pin,
                onPressed: () {},
                  validator: (val) {
                  return "";
                },
              ),
              const SizedBox(
                height: 10,
              ),
              CustomtTextFormFieldSign(

                 controller: TextEditingController(),
                hintText: "Enter Your Last Name",
                icon: Icons.person_pin,
                onPressed: () {},
                  validator: (val) {
                  return "";
                },
              ),
              const SizedBox(
                height: 10,
              ),
              CustomtTextFormFieldSign(
                 controller: TextEditingController(),
                hintText: "Enter Your Email",
                icon: Icons.email_outlined,
                onPressed: () {},
                  validator: (val) {
                  return "";
                },
              ),
              const SizedBox(
                height: 10,
              ),
              CustomtTextFormFieldSign(
                 controller: TextEditingController(),
                hintText: "Enter Your Password",
                icon: Icons.lock_outline,
                onPressed: () {},
                  validator: (val) {
                  return "";
                },
              ),
              const SizedBox(
                height: 30,
              ),
              CustomButton(
                text: "Sign In",
                onPressed: () {
                  controller.goToverifyCodesign();
                },
              ),
              const SizedBox(
                height: 15,
              ),
              CustomSingorLogin(
                text1: "Already have an account ? ",
                text2: "Login",
                onTap: () {
                  controller.goToLogin();
                },
                
              ),
              const SizedBox(
                height: 15,
              ),
              CustomSingorLogin(
                text1: "Do you want to register as ",
                text2: "Worker",
                onTap: () {
                  controller.goToWorkerSignIn();
                },
              )
            ],
          )
        ],
      )),
    );
  }
}
