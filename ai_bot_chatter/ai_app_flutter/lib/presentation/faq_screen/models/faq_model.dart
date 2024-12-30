import 'package:get/get.dart';

/// This class defines the variables used in the [faq_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class FaqModel {
  RxList<String> faqItemList =
      ["General", "Account", "Service", "Chatbook"].obs;

  RxList<String> faqList = [
    "What is aiBotTalk?",
    "Is the aiBotTalk AI app free?",
    "How can I use aiBotTalk",
    "How can I log out from aiBotTalk?",
    "How to close aiBotTalk account?",
    "Question"
  ].obs;
}
