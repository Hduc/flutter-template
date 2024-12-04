import 'package:ai_app_flutter/core/app_export.dart';import 'package:ai_app_flutter/presentation/academic_writer_chat_screen/models/academic_writer_chat_model.dart';import 'package:flutter/material.dart';class AcademicWriterChatController extends GetxController {TextEditingController groupthreeController = TextEditingController();

Rx<AcademicWriterChatModel> academicWriterChatModelObj = AcademicWriterChatModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); groupthreeController.dispose(); } 
 }
