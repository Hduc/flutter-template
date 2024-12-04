// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../util/color_data.dart';
import '../../util/constant.dart';
import '../../util/fetch_pixels.dart';
import '../../util/get/image_controller.dart';
import '../../util/widget_utils.dart';

class EditProfile extends StatelessWidget {
  final imageController = Get.put(ImageController());

  EditProfile({Key? key}) : super(key: key);

  onBackClick(BuildContext context) {
    Constant.backToPrev(context);
  }

  final List gender = ['Male', 'Female', 'Other'];
  final List language = ["English", "Hindi", "Gujarati"];

  @override
  Widget build(BuildContext context) {
    Constant.setupSize(context);
    double horSpace = FetchPixels.getDefaultHorSpaceFigma(context);

    TextEditingController nameController = TextEditingController();
    TextEditingController phoneController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController dateController = TextEditingController(text: "");
    TextEditingController genderController = TextEditingController(text: "");
    TextEditingController languageController = TextEditingController(text: "");

    emailController.text = 'Kristinwatson58@gmail.com';
    nameController.text = 'Robert Fox';
    phoneController.text = '(480) 555-0103';
    dateController.text = '2/11/12';
    genderController.text = 'Male';
    languageController.text = 'English,Hindi';

    RxInt selectedGender = 0.obs;
    RxInt selectLanguage = 0.obs;

    return WillPopScope(
      onWillPop: () async {
        onBackClick(context);
        return false;
      },
      child: Scaffold(
        backgroundColor: getCurrentTheme(context).scaffoldBackgroundColor,
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Column(
            children: [
              getVerSpace(20.h),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      onBackClick(context);
                    },
                    child: getSvgImage(context, "arrow_back.svg", 24),
                  ),
                  getHorSpace(20.h),
                  getCustomFont("Edit  Profile", 22, Colors.white, 1,
                      fontWeight: FontWeight.w700),
                ],
              ).paddingSymmetric(horizontal: 20.h),
              30.h.verticalSpace,
              Expanded(
                flex: 1,
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    30.h.verticalSpace,
                    getProfileCell(context),
                    40.h.verticalSpace,
                    getDefaultUnderlineTextFiled(
                      context,
                      'Name',
                      nameController,
                      getFontHint(context),
                      (value) {},
                      imgName: 'name.svg',
                    ),
                    20.h.verticalSpace,
                    getDefaultUnderlineTextFiled(
                      context,
                      'Email',
                      emailController,
                      getFontHint(context),
                      (value) {},
                      imgName: 'email.svg',
                    ),
                    20.h.verticalSpace,
                    getDefaultUnderlineTextFiled(
                      context,
                      'Phone Number',
                      phoneController,
                      getFontHint(context),
                      (value) {},
                      imgName: 'phone.svg',
                    ),
                    20.h.verticalSpace,
                    getDefaultUnderlineTextFiled(
                      context,
                      'Date of Birth',
                      dateController,
                      getFontHint(context),
                      (value) {},
                      imgName: 'calender.svg',
                    ),
                    20.h.verticalSpace,
                    getDefaultUnderlineTextFiled(context, 'Gender',
                        genderController, getFontHint(context), (value) {},
                        imgName: 'gender.svg', withArrow: true, editTap: () {
                      getDefaultDialog(
                          context,
                          () {
                            Constant.backToPrev(context);
                          },
                          gender,
                          selectedGender,
                          functionCancel: () {
                            Constant.backToPrev(context);
                          });
                    }, readOnly: true),
                    20.h.verticalSpace,
                    getDefaultUnderlineTextFiled(context, 'Languages',
                        languageController, getFontHint(context), (value) {},
                        imgName: 'language.svg',
                        withArrow: true,
                        readOnly: true, editTap: () {
                      getLanguageDialog(
                          context,
                          () {
                            Constant.backToPrev(context);
                          },
                          language,
                          selectLanguage,
                          functionCancel: () {
                            Constant.backToPrev(context);
                          });
                    }),
                    20.h.verticalSpace,
                  ],
                ),
              ),
              buildSaveProfileButton(context, horSpace),
              40.h.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSaveProfileButton(BuildContext context, double horSpace) {
    return getButtonFigma(
      context,
      getAccentColor(context),
      true,
      'Save profile',
      Colors.white,
      () {
        onBackClick(context);
      },
      EdgeInsets.zero,
    ).marginSymmetric(horizontal: horSpace);
  }

  getProfileCell(BuildContext context) {
    return Center(
      child: Container(
        width: 90.h,
        height: 90.h,
        child: Stack(
          children: [
            Positioned.fill(
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Obx(
                    () => getCircleImage(
                      context,
                      (imageController.imagePath.value.isNotEmpty)
                          ? imageController.imagePath.value
                          : 'profile1.png',
                      90.h,
                      fileImage: (imageController.imagePath.value.isNotEmpty),
                    ),
                  )),
            ),
            Positioned.fill(
              child: Align(
                alignment: Alignment.bottomRight,
                child: InkWell(
                  onTap: () {
                    imageController.getImage();
                  },
                  child: Container(
                    width: 30.h,
                    height: 30.h,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xff3d3949),
                    ),
                    child: Center(
                      child: getSvgImage(
                        context,
                        'edit.svg',
                        18,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
