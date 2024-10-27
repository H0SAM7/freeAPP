import 'package:project2/Base/class/database.dart';
import 'package:project2/Base/constant/applink.dart';

class ChatData {
  Database database = Database();
  ChatData(this.database);
  getData(String username) async {
    var data = await database.postData(Applink.testchat, {
      "customer_user": username,
    });
    return data.fold((l) => l, (r) => r);
  }

  getMessages(String chat) async {
    var data = await database.postData(Applink.testgetmasseges, {
      "chat_id": chat,
    });
    return data.fold((l) => l, (r) => r);
  }

  senMessage(String message, String chat_id, String sender) async {
    var data = await database.postData(Applink.testchatadd,
        {"message": message, "chat_id": chat_id, "sender_username": sender});
    return data.fold((l) => l, (r) => r);
  }
}
