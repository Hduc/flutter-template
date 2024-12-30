

/// This class defines the variables used in the [chats_two_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ChatsTwoModel {

  String? image;
  String? name;
  String? lastMessage;
  bool? unseen;
  String? time;

  ChatsTwoModel({
    this.image,
    this.name,
    this.lastMessage,
    this.time,
    this.unseen,
});

}
