import 'package:dating_app/core/app_export.dart';
import 'package:dating_app/core/utils/appbar.dart';
import 'package:dating_app/presentation/help_screen/common/help_question_ans.dart';
import 'package:flutter/material.dart';
import 'controller/help_controller.dart';

class HelpScreen extends GetWidget<HelpController> {
  const HelpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
        backgroundColor:Colors.white,

        body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
             CustomAppBarText(
               title: 'Help',
             ),
             Divider(
              color: Color(0xFFE7E7E7),
              thickness: getSize(1.5),
             ),
             Expanded(
               child: ListView(
                 padding: EdgeInsets.zero,
                 children: [
                   Padding(
                     padding: getPadding(top: getSize(10)),
                     child: QuestionAns(),
                   ),
                   QuestionAns(
                     question: 'How do I edit my details?',
                   ),
                   QuestionAns(
                     question: 'I m out of profiles to swipe through?',
                   ),
                   QuestionAns(
                     question: 'How to get more matches?',
                   ),
                   QuestionAns(
                     question: 'How to get more likes?',
                   ),
                   QuestionAns(
                     question: 'How do I edit my profile?',
                   ),
                   QuestionAns(
                     question: 'How to swipe & match?',
                   ),
                 ],
               ),
             )

            ]));
  }


  onTapArrowleft28() {
    Get.back();
  }
}
