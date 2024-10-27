import 'package:flutter/material.dart';
import 'package:project2/View/widget/shared/custombutton.dart';
import 'package:project2/View/widget/shared/customlargetext.dart';
import 'package:project2/View/widget/auth/customsmalltext.dart';
import 'package:project2/View/widget/auth/customtextformfiledsign.dart';
import 'package:project2/View/widget/custombackgroundcolorsign.dart';

class ContactorRestPassword extends StatelessWidget {
  const ContactorRestPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomBackgroundColorsign(

      child: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const CustomLargeText(
                  text: "Rest Password",
                ),
                const SizedBox(
                  height: 10,
                ),
                const CustomSmallText(
                  text: "Enter Your Password To Proceed",
                ),
                const SizedBox(
                  height: 40,
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
                  height: 10,
                ),
                CustomtTextFormFieldSign(
                  controller: TextEditingController(),
                  hintText: "Confirm Your Password",
                  icon: Icons.lock_outline,
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
                  text: "Save",
                  onPressed: () {},
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
