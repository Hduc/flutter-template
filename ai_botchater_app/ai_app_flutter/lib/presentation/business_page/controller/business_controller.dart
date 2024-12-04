import 'dart:ui';

import 'package:ai_app_flutter/core/app_export.dart';
import 'package:ai_app_flutter/presentation/business_page/models/business_model.dart';
import 'package:ai_app_flutter/presentation/business_page/models/writing_model.dart';

class BusinessController extends GetxController {
  // Rx<BusinessModel> businessModelObj;
  RxList<BusinessModel> businessModelList = [
    BusinessModel("icon1.png", "All"),
    BusinessModel("icon2.png", "Writing"),
    BusinessModel("icon3.png", "Creative"),
    BusinessModel("icon4.png", "Business"),
    BusinessModel("icon5.png", "Social media"),
    BusinessModel("icon6.png", "Developer"),
    BusinessModel("icon7.png", "Personal"),
    BusinessModel("icon8.png", "Other"),
  ].obs;

  RxList<WritingModel> writingList = [
    WritingModel("writing1.png", "Write an Articles", Color(0xFFFFF6E0),
        AppRoutes.writeAnArticlesScreen),
    WritingModel("writing2.png", "Academic Articles", Color(0xFFEADDFF),
        AppRoutes.academicWriterScreen),
    WritingModel("writing3.png", "Translate Language", Color(0xFFDAFFDB),
        AppRoutes.translateLanguageOneScreen),
    WritingModel("writing4.png", "Plagiarism Checker", Color(0xFFDCE1FF),
        AppRoutes.plagiarismCheckerScreen),
  ].obs;

  RxList<WritingModel> creativeList = [
    WritingModel("creative1.png", "Songs/lyrics", Color(0xFFFFDFDB),
        AppRoutes.songsLyricsOneScreen),
    WritingModel("creative2.png", "Storyteller", Color(0xFFDCE4FF),
        AppRoutes.storytellerScreen),
    WritingModel(
        "creative3.png", "Poems", Color(0xFFE2FFF1), AppRoutes.poemsScreen),
    WritingModel("creative4.png", "Movie script", Color(0xFFFFF4DF),
        AppRoutes.movieScriptScreen),
  ].obs;

  RxList<WritingModel> businessList = [
    WritingModel("business1.png", "Advertisements", Color(0xFFD8F2FD),
        AppRoutes.advertisementsOneScreen),
    WritingModel("business2.png", "Answer interview", Color(0xFFE6FEEF),
        AppRoutes.answerInterviewScreen),
    WritingModel("business3.png", "Job post", Color(0xFFFFFADD),
        AppRoutes.jobPostScreen),
    WritingModel("business4.png", "Email writer", Color(0xFFFFF1DA),
        AppRoutes.songsLyricsScreen),
  ].obs;

  RxList<WritingModel> developerList = [
    WritingModel("developer1.png", "Write code", Color(0xFFDDFCFF),
        AppRoutes.writeCodeScreen),
    WritingModel("developer2.png", "Explain code", Color(0xFFFFE7E5),
        AppRoutes.explainCodeScreen),
  ].obs;

  RxList<WritingModel> personalList = [
    WritingModel("personal1.png", "Birthday", Color(0xFFE1DDFF),
        AppRoutes.birthdayScreen),
    WritingModel(
        "personal2.png", "Apology", Color(0xFFFFF3DA), AppRoutes.apologyScreen),
    WritingModel("personal3.png", "Invitation", Color(0xFFFFDCDD),
        AppRoutes.invitationScreen),
  ].obs;

  RxList<WritingModel> othersList = [
    WritingModel("other1.png", "Create conversaion", Color(0xFFDBDBFF),
        AppRoutes.createConversationScreen),
    WritingModel("other2.png", "Tell a joke", Color(0xFFFFFCDD),
        AppRoutes.tellAJokeScreen),
    WritingModel(
        "other3.png", "Food", Color(0xFFFFE8DC), AppRoutes.foodRecipesScreen),
    WritingModel(
        "other4.png", "Diet plan", Color(0xFFD9FFDD), AppRoutes.dietPlanScreen),
  ].obs;

  RxInt selectItem = 0.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
