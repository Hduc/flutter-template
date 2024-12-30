import 'package:colorful_safe_area/colorful_safe_area.dart';

import 'package:carwash_app/core/app_export.dart';
import 'package:carwash_app/widgets/app_bar/appbar_image.dart';
import 'package:carwash_app/widgets/app_bar/appbar_title.dart';
import 'package:carwash_app/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';


class ProfileDetailsScreen extends StatefulWidget {
  const ProfileDetailsScreen({Key? key}) : super(key: key);

  @override
  State<ProfileDetailsScreen> createState() => _ProfileDetailsScreenState();
}

class _ProfileDetailsScreenState extends State<ProfileDetailsScreen> {

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ()async{
        Get.back();
        return true;
      },
      child:  ColorfulSafeArea(
        color: ColorConstant.whiteA700,
        child: Scaffold(
            backgroundColor: ColorConstant.gray5001,
            appBar:CustomAppBar(
              height: getVerticalSize(81),
              leadingWidth: 40,
              leading: AppbarImage(
                  height: getSize(24),
                  width: getSize(24),
                  svgPath: ImageConstant.imgArrowleft,
                  margin: getMargin(left: 16, top: 29, bottom: 28),
                  onTap: () {
                    onTapArrowleft18();
                  }),
              actions: [
                AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgTicket,
                    margin:
                    getMargin(left: 16, top: 29, right: 16, bottom: 28),
                    onTap: () {
                      onTapTicket();
                    })
              ],
              centerTitle: true,
              title: AppbarTitle(text: "lbl_profile_details".tr),
            ),









            body: Container(
                width: double.maxFinite,
                margin: getMargin(top: 6),
                padding:
                getPadding(left: 16, top: 20, right: 16, bottom: 20),
                decoration: AppDecoration.white,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      profile_detail_option(ImageConstant.imgSignal, "Name", "Ronald Richards"),
                      Padding(
                          padding: getPadding(top: 14, bottom: 21),
                          child: Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: ColorConstant.gray5001,
                              endIndent: getHorizontalSize(22))),
                      profile_detail_option(ImageConstant.imgmailIcon, "Email", "ronaldrichard@gmail.com"),
                      Padding(
                          padding: getPadding(top: 14, bottom: 21),
                          child: Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: ColorConstant.gray5001,
                              endIndent: getHorizontalSize(22))),
                      profile_detail_option(ImageConstant.imgcallIcon, "Phone Number", "(505) 765-1633"),
                      Padding(
                          padding: getPadding(top: 14, bottom: 21),
                          child: Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: ColorConstant.gray5001,
                              endIndent: getHorizontalSize(22))),


                    ]))),
      ),
    );
  }

  onTapArrowleft18() {
    Get.back();
  }

  Widget profile_detail_option(icon,title,text){
    return  Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          svgPath: icon,
          height: getSize(
            24,
          ),
          width: getSize(
            24,
          ),
          margin: getMargin(
            bottom: 30,
          ),
        ),
        Expanded(
          child: Padding(
            padding: getPadding(
              left: 16,
              top: 1,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  title,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtBodyGray600,
                ),
                Padding(
                  padding: getPadding(
                    top: 11,
                  ),
                  child: Text(
                    text,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtBody,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  onTapTicket() {
    Get.toNamed(
      AppRoutes.editProfileScreen,
    );
  }
}




