import 'package:dating_app/core/app_export.dart';
import 'package:dating_app/presentation/my_profile_screen/common/info_container.dart';
import 'package:flutter/material.dart';
import 'controller/my_profile_controller.dart';

// ignore_for_file: must_be_immutable
class MyProfileScreen extends GetWidget<MyProfileController> {
  MyProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
             Padding(
              padding: getPadding(top: getSize(65),bottom: getSize(10),right: getSize(16),left: getSize(16)),
              child: Stack(
               // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                alignment: Alignment.center,
                children: [
                 Align(
                   alignment: Alignment.centerLeft,
                   child: GestureDetector(
                    onTap: () {
                     onTapArrowleft18();
                    },
                     child: CustomImageView(
                      svgPath: ImageConstant.imgArrowleft ,
                      height: getSize(24,),
                      width: getSize(24,),
                     ),
                   ),
                 ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                     "My profile".tr,
                     overflow: TextOverflow.ellipsis,
                     textAlign: TextAlign.center,
                     style: theme.textTheme.headlineMedium,
                    ),
                  ),
                 Align(
                   alignment: Alignment.centerRight,
                   child: GestureDetector(
                    onTap:() {
                     onTapIcpencil();
                    },
                     child: CustomImageView(
                      svgPath: ImageConstant.imgIcpencil,
                      height: getSize(24,),
                      width: getSize(24,),
                     ),
                   ),
                 ),

                ],
              ),
             ),
              Divider(
               thickness: getSize(1.5),
               color: Color(0xFFE7E7E7),
              ),
              Padding(
                padding: getPadding(top: getSize(35),bottom: getSize(35)),
                child: CustomImageView(
                    svgPath: ImageConstant.imgAvtar1,
                    height: getSize(104),
                    width: getSize(104)),
              ),
              Expanded(
                child: ListView(
                 physics: NeverScrollableScrollPhysics(),
                 padding: getPadding(left: getSize(16),right: getSize(16)),
                 children: [
                 InfoContainer(
                 ),
                   InfoContainer(
                     title: 'Email address',
                     infoData: 'ronaldrichards@gmail.com',
                   ),
                   InfoContainer(
                     title: 'Phone number',
                     infoData: '(405) 555-0128',
                   ),
                   InfoContainer(
                     title: 'Profession',
                     infoData: 'Designer',
                   ),
                   InfoContainer(
                     title: 'Gender',
                     infoData: 'Male',
                   ),
                   InfoContainer(
                     title: 'About',
                     infoData: 'I am single 25 years old. I love fitness, traveling, & going out to play. You can find me in Jakarta.',
                   ),


                 ],
                ),
              )

            ],
        ),
    );
  }


  onTapArrowleft18() {
    Get.back();
  }


  onTapIcpencil() {
    Get.toNamed(
      AppRoutes.editProfileScreen,
    );
  }
}
