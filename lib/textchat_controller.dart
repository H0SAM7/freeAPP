import 'package:chat_bubbles/bubbles/bubble_special_three.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project2/Base/class/inquirystatus.dart';
import 'package:project2/Base/constant/appcolors.dart';
import 'package:project2/Base/funcation/respondingrequest.dart';
import 'package:project2/Base/services/myservices.dart';
import 'package:project2/chat_data.dart';
import 'package:project2/testchat_model.dart';
import 'package:intl/intl.dart';

class HomechatController extends GetxController {
  String? username;
  Myservices myservices = Get.find();
  late String inquiryStatus;
  ChatData chatData = ChatData(Get.find());
  List users = [];

  initaildata() {
    username = myservices.sharedPreferences.getString("username");
  }

  @override
  void onInit() {
    initaildata();
    getdata();
    super.onInit();
  }

  getdata() async {
    inquiryStatus = InquiryStatus.lodaing;
    var request = await chatData.getData(username!);
    inquiryStatus = respondingRequest(request);
    print(request);
    if (InquiryStatus.success == inquiryStatus) {
      if (request['status'] == "success") {
        users.addAll(request['data']);
      } else
        InquiryStatus.sereverFailure;
    }
    update();
  }
}

class GetMessagesController extends GetxController {
  String? chatid;
  String? username;
  String? workerUername;
  late String inquiryStatus;
  TextEditingController? text;
  ChatData chatData = ChatData(Get.find());
  List<ChatModel> messages = [];

  final ScrollController scrollController = ScrollController();

  // تمرير فوري إلى نهاية القائمة
  void scroll() {
    if (scrollController.hasClients) {
      scrollController.jumpTo(scrollController.position.maxScrollExtent);
    }
  }

  initaildata() {
    chatid = Get.arguments['chat_id'];
    username = Get.arguments['user_name'];
    workerUername = Get.arguments['worker_username'];
  }

  @override
  void onInit() {
    text = TextEditingController();
    initaildata();
    getdata();
    super.onInit();
  }

  void addchat(String sender_name) {
    messages.add(ChatModel(
      message: text!.text,
      senderUsername: sender_name,
      date: DateTime.now(),
    ));
    text!.clear();
    update();
  }

  getdata() async {
    inquiryStatus = InquiryStatus.lodaing;
    var request = await chatData.getMessages(chatid!);
    inquiryStatus = respondingRequest(request);
    if (InquiryStatus.success == inquiryStatus) {
      if (request['status'] == "success") {
        List getMessage = request['data'];
        messages.addAll(getMessage.map((e) => ChatModel.fromJson(e)));
      } else {
        inquiryStatus = InquiryStatus.sereverFailure;
      }
    }
    update();
  }

  sendMessage() async {
    inquiryStatus = InquiryStatus.lodaing;
    var request = await chatData.senMessage(text!.text, chatid!, username!);
    inquiryStatus = respondingRequest(request);
    if (InquiryStatus.success == inquiryStatus) {
      if (request['status'] == "success") {
        addchat(username!);
      } else {
        inquiryStatus = InquiryStatus.sereverFailure;
      }
    }
    update();
    scroll(); // تمرير للأسفل
  }

  List<Widget> messageList() {
    List<Widget> messagesList = [];
    DateTime? oldDate;

    for (var message in messages) {
      DateTime newMessage = message.date!;

      // مقارنة التاريخ الحالي بالتاريخ السابق
      if (oldDate == null ||
          newMessage.day != oldDate.day ||
          newMessage.month != oldDate.month ||
          newMessage.year != oldDate.year) {
        messagesList.add(
          Center(
            child: Text(
              dateStyle(newMessage),
              style: const TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ),
        );
      }

      messagesList.add(
        Column(
          children: [
            BubbleSpecialThree(
              text: message.message!,
              color: message.senderUsername == username
                  ? Appcolors.lightblue
                  : const Color.fromARGB(255, 194, 192, 192),
              tail: false,
              isSender: message.senderUsername == username,
              textStyle: const TextStyle(color: Colors.black, fontSize: 20),
            ),
            Align(
              alignment: message.senderUsername == username
                  ? Alignment.centerRight
                  : Alignment.centerLeft,
              child: Text(
                DateFormat('hh:mm a').format(newMessage),
                style: const TextStyle(fontSize: 10, color: Colors.grey),
              ),
            )
          ],
        ),
      );

      // تحديث التاريخ السابق
      oldDate = newMessage;
    }

    return messagesList;
  }

  String dateStyle(DateTime date) {
    DateTime today = DateTime.now();
    DateTime yesterday = today.subtract(Duration(days: 1));
    DateTime oneweek = today.subtract(Duration(days: 7));

    if (date.day == today.day &&
        date.month == today.month &&
        date.year == today.year) {
      return 'Today';
    } else if (date.day == yesterday.day &&
        date.month == yesterday.month &&
        date.year == yesterday.year) {
      return 'Yesterday';
    } else if (date.isAfter(oneweek)) {
      return DateFormat('EEEE').format(date);
    } else {
      return DateFormat('yyyy-MM-dd').format(date);
    }
  }
}
