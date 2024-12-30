import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:investment_app/core/utils/image_constant.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_image_view.dart';
import '../edit_profile/edit_profile_screen.dart';

class PersonalInformation extends StatefulWidget {
  const PersonalInformation({Key? key}) : super(key: key);

  @override
  State<PersonalInformation> createState() => _PersonalInformationState();
}

class _PersonalInformationState extends State<PersonalInformation> {
  @override
  Widget build(BuildContext context) {
    return  WillPopScope(
      onWillPop: () async{
        Get.back();
        return false;
      },
      child: Scaffold(
          backgroundColor: ColorConstant.lightBlue900,

          body: SafeArea(
            child: Container(
              width: size.width,
              child: Stack(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup14,
                    height: getVerticalSize(
                      251.00,
                    ),
                    width: getHorizontalSize(
                        width
                    ),
                    fit: BoxFit.fill,
                    alignment: Alignment.topLeft,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Row(
                          children: [
                            CustomIconButton(
                                height: 50,
                                width: 50,
                                variant: IconButtonVariant
                                    .FillWhiteA70014,

                                onTap: () {
                                  Get.back();
                                },
                                child: CustomImageView(
                                    svgPath: ImageConstant
                                        .imgArrowleftWhiteA70050x50)),
                            SizedBox(width: getHorizontalSize(68),),
                            Text("Personal Info",
                                overflow: TextOverflow.ellipsis,
                                style: AppStyle.txtInterSemiBold20
                                    .copyWith(
                                    height: getVerticalSize(1.12))),
                          ],
                        ),






                      ],
                    ).paddingSymmetric(horizontal: 24),
                  ),
                  Stack(

                    children: [
                      Container(
                          decoration: AppDecoration.fillWhiteA700.copyWith(
                            borderRadius: BorderRadiusStyle.customBorderTL32,
                          ),
                          child: Padding(
                            padding: getPadding(top: 24),
                            child:

                            Column(
                              children: [
                                Expanded(
                                  child: Container(
                                    child: ListView(
                                      physics:BouncingScrollPhysics(),
                                      children: [

                                        SizedBox(height: getVerticalSize(69),),
                                        getMyprofileDetailFormate(
                                            ImageConstant.imgProfileIcon, "Name", "lbl_lorem".tr,),
                                        SizedBox(height: getVerticalSize(20),),
                                       Divider(),
                                        SizedBox(height: getVerticalSize(20),),
                                        getMyprofileDetailFormate(
                                            ImageConstant.imgMailIcon, "Email", "msg_jack_sparrow14_gmail_com".tr),
                                        SizedBox(height: getVerticalSize(20),),
                                        Divider(),
                                        SizedBox(height: getVerticalSize(20),),
                                        getMyprofileDetailFormate(
                                            ImageConstant.imgCallIcon, "Phone Number", "(219) 555-0114"),
                                        SizedBox(height: getVerticalSize(20),),
                                      ],
                                    ),
                                  ),
                                ),
                                CustomButton(
                                    onTap:() => Get.to(EditProfileScreen()),
                                    height: 56,
                                    width: 327,
                                    text: "Edit Profile",
                                    margin: getMargin(bottom: 30))
                              ],
                            ),)
                      ).paddingOnly(top: getVerticalSize(142)),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          height: getVerticalSize(108),
                          width: getVerticalSize(108),
                          decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(32)),
                          color:ColorConstant.whiteA700,
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 20),
                              blurRadius: 32,
                              spreadRadius: -16,
                              color: Color(0XFF1C1E28).withOpacity(0.12)
                            ),

                          ],
                         ),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgAvtar,
                            fit: BoxFit.fill,
                          ),
                        ).paddingOnly(top: getVerticalSize(90),left: getHorizontalSize(0)),
                      )
                    ],
                  )],
              ),
            ),
          )),
    );
  }
  Widget getMyprofileDetailFormate(
      String iconImage, String cetegoryName, String userDetail) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: getHorizontalSize(24)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                svgPath:iconImage ,
              ),
              // getSvgImage(iconImage,
              //     height: 24.h, width: 24.w, color: buttonColor),
             SizedBox(width: getHorizontalSize(16),),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 Text(cetegoryName,style: TextStyle(
                   color: ColorConstant.gray600,
                   fontSize: getFontSize(
                     16,
                   ),
                   fontFamily: 'Inter',
                   fontWeight: FontWeight.w500,
                 ),),
              SizedBox(height: getVerticalSize(7),),
                Text(userDetail,style: TextStyle(
                  color: ColorConstant.black900,
                  fontSize: getFontSize(
                    16,
                  ),
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                ))
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
