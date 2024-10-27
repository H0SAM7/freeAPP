import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:project2/Controllers/User/userprofile_controller.dart';
import 'package:project2/View/widget/User/userprofile/customrowtextandicon.dart';
import 'package:project2/View/widget/User/userprofile/profilecontainers.dart';
import 'package:project2/View/widget/User/userprofile/userimage.dart';
import 'package:project2/View/widget/User/userprofile/usernameandfirstname.dart';
import 'package:project2/View/widget/shared/customlargetext.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    UserProfileController controller = Get.put(UserProfileController());
    return Scaffold(
        body: Container(
            padding: const EdgeInsets.all(20),
            child: ListView(children: [
              Center(
                child: CustomLargeText(
                  text: "My Profile".tr,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              const UserImage(),
              const Usernameandfirstname(),
              const SizedBox(
                height: 10,
              ),
              const Divider(),
              const SizedBox(
                height: 20,
              ),
              const CustomRowTextAndIcon(
                text: "Language",
                icon: Icons.language,
              ),
              const SizedBox(
                height: 10,
              ),
              ProfileContainers(
                text: "Arabic".tr,
                onTap: () {
                  controller.chageArabic();
                },
              ),
              ProfileContainers(
                text: "English".tr,
                onTap: () {
                  controller.changeEnglish();
                },
              ),
              const CustomRowTextAndIcon(
                text: "Address",
                icon: Icons.location_on_outlined,
              ),
              ProfileContainers(
                text: "My Address",
                onTap: () {
                  controller.goToaddress();
                },
              ),
            ])));
  }
}
