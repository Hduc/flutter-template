
/// This class defines the variables used in the [chat_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ChatModel {
  String image;
  String name;
  String type;
  String time;
  bool notification;

  ChatModel(this.image, this.name, this.type, this.time, this.notification);
}
