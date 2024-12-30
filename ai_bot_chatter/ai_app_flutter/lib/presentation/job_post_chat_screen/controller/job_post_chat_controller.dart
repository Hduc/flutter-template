import 'package:ai_app_flutter/core/app_export.dart';import 'package:ai_app_flutter/presentation/job_post_chat_screen/models/job_post_chat_model.dart';import 'package:flutter/material.dart';class JobPostChatController extends GetxController {TextEditingController grouptwentythreController = TextEditingController();

Rx<JobPostChatModel> jobPostChatModelObj = JobPostChatModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); grouptwentythreController.dispose(); } 
 }
