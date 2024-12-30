import 'package:flutter_salary_management_app/presentation/language_screen/common/language_options_common.dart';

import '../../core/dataFile/data_file.dart';
import 'controller/language_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_salary_management_app/core/app_export.dart';
import 'package:flutter_salary_management_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:flutter_salary_management_app/widgets/app_bar/appbar_subtitle.dart';
import 'package:flutter_salary_management_app/widgets/app_bar/custom_app_bar.dart';

import 'models/language_model.dart';

class LanguageScreen extends GetWidget<LanguageController> {
  const LanguageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<LanguageModel> languages = DataFile.languagesData;

    return Scaffold(
        resizeToAvoidBottomInset: false,
        // appBar: _buildAppBar(),
        body: Column(children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 20.v),
            // decoration: AppDecoration.outlineGray300,
            decoration: BoxDecoration(
              // color: appTheme.gray200,
              border: Border(
                bottom: BorderSide(
                  color: appTheme.gray200,
                  width: 1.h,
                ),
              ),
            ),
            child: CustomAppBar(
              leading: AppbarLeadingImage(
                  imagePath: ImageConstant.imgArrowLeft,
                  // margin: EdgeInsets.only(left: 16.h, top: 27.v, bottom: 28.v),
                  onTap: () {
                    onTapArrowLeft();
                  }),
              centerTitle: true,
              title: AppbarSubtitle(
                text: "lbl_language".tr,
              ),
            ),
          ),
          Expanded(child: ListView.separated(
              padding: EdgeInsets.all(16.h),
              itemBuilder: (context, index) {
                LanguageModel modal = languages[index];
return LanguageOptionsCommon(image: modal.image,text: modal.text,index: index,);
          },
              separatorBuilder: (context, index) => SizedBox(height: 16.v),
              itemCount: languages.length)),
          // _buildLanguageEditText1(),
          // SizedBox(height: 16.v),
          // _buildLanguageEditText2(),
          // SizedBox(height: 16.v),
          // _buildLanguageEditText3(),
          // SizedBox(height: 16.v),
          // _buildLanguageEditText4(),
          // SizedBox(height: 16.v),
          // _buildLanguageEditText5(),
          // SizedBox(height: 16.v),
          // _buildLanguageEditText6(),
          // SizedBox(height: 5.v)
        ]));
  }







  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
