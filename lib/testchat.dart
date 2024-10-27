import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project2/Base/constant/appcolors.dart';
import 'package:project2/textchat_controller.dart';

class ChatTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    GetMessagesController controller = Get.put(GetMessagesController());
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Appcolors.white,
        title: Text(
          "${controller.workerUername}",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: GetBuilder<GetMessagesController>(
              builder: (controller) {
                WidgetsBinding.instance.addPostFrameCallback((scroll) {
                  controller.scroll();
                });
                return ListView.builder(
                  controller: controller.scrollController,
                  itemCount: controller.messageList().length,
                  itemBuilder: (context, i) {
                    Widget pageWidget = controller.messageList()[i];
                    return pageWidget; // عرض الرسالة
                  },
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: controller.text,
                    decoration: InputDecoration(
                      hintText: "Type a message",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Appcolors.black)),
                      focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Appcolors.black)),
                      disabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Appcolors.black)),
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(
                    Icons.send,
                    color: Appcolors.primaryColor,
                  ),
                  onPressed: () {
                    controller.sendMessage();
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
