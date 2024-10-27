class ChatModel {
  String? messageId;
  String? message;
  String? chatId;
  String? senderUsername;
  DateTime? date;

  ChatModel({
    this.message,
    this.senderUsername,
    this.date,
  });

  ChatModel.fromJson(Map<String, dynamic> json) {
    messageId = json['message_id'];
    message = json['message'];
    chatId = json['chat_id'];
    senderUsername = json['sender_username'];
    date = DateTime.parse(json['timee_date']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message_id'] = this.messageId;
    data['message'] = this.message;
    data['chat_id'] = this.chatId;
    data['sender_username'] = this.senderUsername;
    data['timee_date'] = this.date?.toIso8601String();

    return data;
  }
}
