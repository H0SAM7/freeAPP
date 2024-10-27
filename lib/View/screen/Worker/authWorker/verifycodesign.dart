import 'package:flutter/material.dart';
import 'package:project2/Base/constant/appcolors.dart';
import 'package:project2/View/widget/shared/customlargetext.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:project2/View/widget/custombackgroundcolorsign.dart';

class WorkerVerifyCode extends StatelessWidget {
  const WorkerVerifyCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomBackgroundColorsign(
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Column(
                children: [
                  const CustomLargeText(
                    text: "Verfication Code",
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Enter The Code To Verify The Account",
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  OtpTextField(
                    numberOfFields: 5,
                    borderColor: Appcolors.white,
                    fieldWidth: 60,
                    focusedBorderColor: Appcolors.primaryColor,
                    //set to true to show as box or false to show as dash
                    showFieldAsBox: true,
                    //runs when a code is typed in
                    onCodeChanged: (String code) {
                      //handle validation or checks here
                    },
                    //runs when every textfield is filled
                    onSubmit: (String verificationCode) {}, // end onSubmit
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
