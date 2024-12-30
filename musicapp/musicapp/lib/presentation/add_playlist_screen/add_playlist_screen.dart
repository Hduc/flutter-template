import 'package:flutter/material.dart';
import 'package:musicapp/core/app_export.dart';
import 'package:musicapp/widgets/app_bar/appbar_image.dart';
import 'package:musicapp/widgets/app_bar/appbar_title.dart';
import 'package:musicapp/widgets/app_bar/custom_app_bar.dart';
import 'package:musicapp/widgets/custom_elevated_button.dart';
import 'package:musicapp/widgets/custom_text_form_field.dart';

import 'controller/add_playlist_controller.dart';




class AddPlaylistScreen extends StatefulWidget {
  const AddPlaylistScreen({super.key});

  @override
  State<AddPlaylistScreen> createState() => _AddPlaylistScreenState();
}

class _AddPlaylistScreenState extends State<AddPlaylistScreen> {
 AddPlaylistController controller = Get.put(AddPlaylistController());
 @override
 void initState() {
  setSafeAreaColor();
  super.initState();
 }
 @override
 Widget build(BuildContext context) {
  return WillPopScope(
      onWillPop: () async {
       Get.back();
       return true;
      },
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor:appTheme.bgColor,
          appBar: CustomAppBar(
              height: getVerticalSize(81),
              leadingWidth: 44,
              leading: AppbarImage(
                  height: getSize(24),
                  width: getSize(24),
                  svgPath: PrefUtils().getThemeData() == "primary"?ImageConstant.imgArrowleft:ImageConstant.imgArrowleftWhite,
                  margin: getMargin(left: 20, top: 29, bottom: 28),
                  onTap: () {
                   onTapArrowleft11();
                  }),
              centerTitle: true,
              title: AppbarTitle(text: "lbl_add_playlist".tr),
              styleType: Style.bgFill),
          body: Container(
            color: appTheme.bgColor,
              width: double.maxFinite,
              padding: getPadding(left: 20, top: 27, right: 20, bottom: 27),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                   Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       mainAxisAlignment: MainAxisAlignment.start,
                       children: [
                        Text("msg_give_your_play_list".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: TextThemeHelper.bodyLargeGray600),
                        CustomTextFormField(
                          hintStyle:
                          TextThemeHelper.bodyLargeGray600,
                          textStyle:
                          TextThemeHelper.text16width400Black,
                         controller: controller.playlistnameController,
                         margin: getMargin(top: 4),
                         contentPadding: getPadding(
                             left: 16, top: 18, right: 16, bottom: 18),
                         hintText: "lbl_my_playlist_1".tr,
                        )
                       ]),
                   CustomElevatedButton(
                       onTap: (){
                        Get.back();
                       },
                       text: "lbl_add".tr,
                       margin: getMargin(top: 48, bottom: 5),
                       buttonStyle: ButtonThemeHelper.fillDeeppurpleA200
                           .copyWith(
                           fixedSize: MaterialStateProperty.all<Size>(
                               Size(double.maxFinite,
                                   getVerticalSize(54)))),
                       buttonTextStyle: TextThemeHelper.titleMediumPrimary_1)
                  ]))));
 }

 onTapArrowleft11() {
  Get.back();
 }
}





