import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project2/Base/constant/appcolors.dart';
import 'package:project2/Base/constant/appimages.dart';
import 'package:project2/View/widget/shared/customlargetext.dart';
import 'package:project2/textchat_controller.dart';

class HomeChat extends StatelessWidget {
  const HomeChat({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomechatController());
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 30),
        child: ListView(
          children: [
            const Center(
              child: CustomLargeText(
                text: "My Chats",
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Column(
              children: [
                GetBuilder<HomechatController>(builder: (controller) {
                  return ListView.builder(
                      itemCount: controller.users.length,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, i) {
                        return Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Get.toNamed("chat1", arguments: {
                                  "chat_id":
                                      controller.users[i]['chat_id'].toString(),
                                  "user_name": controller.username,
                                  "worker_username" : controller.users[i]['worker_username']
                                });
                              },
                              child: ListTile(
                                leading: Image.asset(Appimages.userProfile),
                                title: Text(
                                  "${controller.users[i]['worker_username']}",
                                  style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            const Divider(
                              color: Appcolors.black,
                            ),
                          ],
                        );
                      });
                }),
              ],
            )
          ],
        ),
      ),
    );
  }
}
