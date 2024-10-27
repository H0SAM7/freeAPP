// import 'package:chat_bubbles/bubbles/bubble_special_three.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:project2/textchat_controller.dart';

// class Chat2 extends StatelessWidget {
//   const Chat2({super.key});

//   @override
//   Widget build(BuildContext context) {
//     Get.put(TextchatController(), permanent: true);
//     String myname = "chat2";

//     return Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.blue,
//           title: const Text(
//             "MyChat",
//             style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
//           ),
//         ),
//         body: GetBuilder<TextchatController>(builder: (controller) {
//           return Container(
//             padding: EdgeInsets.all(15),
//             margin: EdgeInsets.only(top: 20),
//             child: Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Expanded(
//                     child: ListView.builder(
//                         itemCount: controller.chatlist.length,
//                         itemBuilder: (context, i) {
//                           return BubbleSpecialThree(
//                             text: controller.chatlist[i].text.toString(),
//                             color: controller.chatlist[i].sender_name == myname
//                                 ? Color(0xFF1B97F3)
//                                 : Colors.grey,
//                             tail: true,
//                             isSender:
//                                 controller.chatlist[i].sender_name == myname
//                                     ? true
//                                     : false,
//                             textStyle:
//                                 TextStyle(color: Colors.white, fontSize: 16),
//                           );
//                         }),
//                   ),
//                   Container(
//                       height: 60,
//                       decoration: BoxDecoration(
//                           color: const Color.fromARGB(255, 218, 216, 216),
//                           borderRadius: BorderRadius.circular(20)),
//                       child: Row(
//                         children: [
//                           Expanded(
//                               child: TextFormField(
//                             controller: controller.text,
//                             decoration:
//                                 const InputDecoration(border: InputBorder.none),
//                           )),
//                           IconButton(
//                               onPressed: () {
//                                 controller.addchat(myname);
//                               },
//                               icon: Icon(Icons.send))
//                         ],
//                       ))
//                 ]),
//           );
//         }));
//   }
// }
