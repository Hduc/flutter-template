import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/presentation/chat_call_screen/models/chat_call_model.dart';

class ChatCallController extends GetxController {
  RxList<ChatCallModel> chatModelObj = [
    ChatCallModel("chat2.png", "Esther Howard", "Outgoing | Dec 20, 2023"),
    ChatCallModel("chat3.png", "Wade Warren", "Missed | Dec 20, 2023"),
    ChatCallModel("chat6.png", "Annette Black", "Incoming | Dec 20, 2023"),
    ChatCallModel("chat4.png", "Darrell Steward", "Outgoing | Dec 20, 2023"),
    ChatCallModel("chat7.png", "Kristin Watson", "Incoming | Dec 20, 2023"),
    ChatCallModel("chat1.png", "Annette Black", "Outgoing | Dec 20, 2023"),
  ].obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
