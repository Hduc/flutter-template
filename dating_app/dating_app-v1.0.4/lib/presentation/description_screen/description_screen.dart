import 'package:dating_app/core/app_export.dart';
import 'package:dating_app/widgets/custom_elevated_button.dart';
import 'package:dating_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import '../../core/utils/appbar.dart';
import 'controller/description_controller.dart';

class DescriptionScreen extends GetWidget<DescriptionController> {
  const DescriptionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
        backgroundColor:Colors.white,

        body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomAppBarText(
                title: 'Step 7/7',
              ),
              Divider(
                color: Color(0xFFE7E7E7),
                thickness: getSize(1.5),
              ),
              Padding(
                padding:  EdgeInsets.only(top:getSize(24),left: getSize(16),right: getSize(16)),
                child: Text("msg_tell_me_about_yourself".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.headlineSmall),
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal:getSize(16)),
                child: CustomTextFormField(
                  autofocus: false,
                    controller: controller.descriptionController,
                    textInputAction: TextInputAction.done,
                    margin: getMargin(top: getSize(16),),


                    hintText: "msg_describe_your_self".tr,
                    hintStyle: CustomTextStyles.bodyLargeGray600,
                    maxLines: 6,
                    filled: true,
                    fillColor:Colors.white,
                    ),
              )
            ]),
        bottomNavigationBar: CustomElevatedButton(
            text: "lbl_next".tr,
            margin: getMargin(left: getSize(16), right: getSize(16), bottom: getSize(40)),
            buttonStyle: CustomButtonStyles.fillPrimary.copyWith(
                fixedSize: MaterialStateProperty.all<Size>(
                    Size(double.maxFinite, getSize(54)))),
            buttonTextStyle: theme.textTheme.titleMedium!,
            onTap: () {
              onTapNext();
            }));
  }

  onTapArrowleft10() {
    Get.back();
  }

  onTapNext() {
    Get.toNamed(
      AppRoutes.profileCreatedSuccessScreen,
    );
  }
}
