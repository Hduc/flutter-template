import 'package:ai_app_flutter/core/app_export.dart';
import 'package:ai_app_flutter/presentation/faq_screen/models/faq_model.dart';
import 'package:flutter/material.dart';

class FaqController extends GetxController {
  TextEditingController group33926Controller = TextEditingController();

  TextEditingController group33929Controller = TextEditingController();

  Rx<FaqModel> faqModelObj = FaqModel().obs;

  RxInt index = 0.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group33926Controller.dispose();
    group33929Controller.dispose();
  }
}
