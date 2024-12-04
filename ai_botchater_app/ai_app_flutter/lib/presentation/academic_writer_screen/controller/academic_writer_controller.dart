import 'package:ai_app_flutter/core/app_export.dart';
import 'package:flutter/material.dart';

import '../../chat_screen/models/chat_model.dart';

class AcademicWriterController extends GetxController {
  TextEditingController grouptwentysixController = TextEditingController();


  RxBool chatList = false.obs;

  RxList<ChatModel> listChat = [
   ChatModel("Write thoughtful essays or well-researched papers. What does Academic Writer do?", 1),
   ChatModel("An Academic Writer creates college-level papers such as essays, dissertations, and theses. Technically, any college student is an Academic Writer. However if you want to make money in this position, you will write papers for someone other than yourself-which means you need to move beyond turning in the product of an all-nighter.Use your freshman paper as the first step on your path to beginning your career as a professional Academic Writer. In this position, you devote your writing to topics of interest, or to intellectual debates with other students or faculty. Research papers and other documents that express viewpoints, challenge current ideas, or induce thought-provoking dorm room chatter all fit the bill.", 0),
  ].obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    grouptwentysixController.dispose();
  }
}
