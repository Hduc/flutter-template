import 'package:dating_app/presentation/profile_page/common/optionContainer.dart';

import '../../data/pref_data.dart';
import 'controller/profile_controller.dart';

import 'package:dating_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProfilePage
    extends GetWidget<ProfileController> {
   ProfilePage({Key? key}) : super(key: key);

  ProfileController controller = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Scaffold(
      // resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: getPadding(top: getSize(65),bottom: getSize(10)),
            child: Text(
              "Profile".tr,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: theme.textTheme.headlineMedium,
            ),
          ),
          Divider(
            color: Color(0xFFE7E7E7),
            thickness: getSize(1.5),
          ),
         Expanded(
           child: ListView(
             shrinkWrap: true,
             physics: BouncingScrollPhysics(),
             padding: EdgeInsets.zero,
            children: [
              Padding(
                padding: getPadding(top: getSize(30)),
                child: CustomImageView(
                  svgPath: ImageConstant.imgAvtar1,
                  height: getSize(
                    104,
                  ),
                  width: getSize(
                    104,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: getSize(8),
                ),
                child: Text(
                  "lbl_ronald_richards".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.titleMediumRubikBlack900,
                ),
              ),
              Text(
                "msg_ronaldrichards_gmail_com".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: CustomTextStyles.bodyLargeRubik.copyWith(
                  letterSpacing: getHorizontalSize(
                    0.16,
                  ),
                ),
              ),

              Padding(
                padding: getPadding(left: 16,top: 16,right: 16),
                child: GestureDetector(
                  onTap: () {
                    Get.toNamed(
                      AppRoutes.subscriptionScreen,
                    );
                  },
                    child: Image.asset(ImageConstant.bannerPng)),
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed(
                    AppRoutes.myProfileScreen,
                  );
                },
                  child: OptionContainer()),
              GestureDetector(
                onTap:() {
                  Get.toNamed(
                    AppRoutes.notificationScreen,
                  );
                },
                child: OptionContainer(
                  img: ImageConstant.imgLock,
                  option: 'Notifications' ,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed(
                    AppRoutes.myAddressScreen,
                  );
                },
                child: OptionContainer(
                  img: ImageConstant.imgLocationBlack900,
                  option: 'My address',
                ),
              ),
              GestureDetector(
                onTap:() {
                  Get.toNamed(
                    AppRoutes.helpScreen,
                  );
                },
                child: OptionContainer(
                  img: ImageConstant.imgWarning,
                  option: 'Help',
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed(
                    AppRoutes.termsAndConditionsScreen,
                  );
                },
                child: OptionContainer(
                  img: ImageConstant.imgArrowdown,
                  option: 'Privacy policy',
                ),
              ),
              GestureDetector(
                onTap: () {
                  {

                    showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        backgroundColor: Colors.white,
                        shape:  RoundedRectangleBorder(borderRadius:
                        BorderRadius.all(Radius.circular(16))),
                        insetPadding: getPadding(left: getSize(27),right: getSize(27)),
                        title: Padding(
                          padding: getPadding(left: getSize(15),right: getSize(15)),
                          child: Text('Are you sure you want to Log out?',style: TextStyle(
                            color: Colors.black,
                            fontSize: getFontSize(18),
                            fontWeight: FontWeight.w600,
                          ),),
                        ),

                        actions: <Widget>[
                          Row(
                            children: [
                              Expanded(
                                child: GestureDetector(
                                  onTap: () {
                                    Get.back();
                                  },
                                  child: Padding(
                                    padding: getPadding(left: getSize(30),bottom: getSize(20)),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(8),
                                          border: Border.all(
                                            color: Color(0xFFAA6BE9),
                                            width: getSize(1.5),
                                          )
                                      ),
                                      child: Padding(
                                        padding:  getPadding(top: getSize(14),bottom: getSize(14)),
                                        child: Center(
                                          child: Text(
                                            'No',style: TextStyle(
                                            color: Color(0xFFAA6BE9),
                                            fontSize: getFontSize(18),
                                            fontWeight: FontWeight.w700,
                                          ),

                                            textAlign: TextAlign.center,

                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: getSize(20),
                              ),
                              Expanded(
                                child: GestureDetector(
                                  onTap: ()  {
                                    PrefData.currentIndex =0;
                                    PrefData.setLogin(true);
                                    Get.toNamed(
                                      AppRoutes.logInScreen,
                                    );

                                  },
                                  child: Padding(
                                    padding: getPadding(right: getSize(30),bottom: getSize(20)),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: Color(0xFFAA6BE9),
                                      ),
                                      child: Padding(
                                        padding:  getPadding(top: getSize(14),bottom: getSize(14)),
                                        child: Center(
                                          child: Text(
                                            'Yes',style: TextStyle(
                                            color: Colors.white,
                                            fontSize: getFontSize(18),
                                            fontWeight: FontWeight.w700,
                                          ),

                                            textAlign: TextAlign.center,

                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),

                        ],
                      ),
                    );
                  }
                },
                child: OptionContainer(
                  img:  ImageConstant.imgRefresh,
                  option: 'Log out',
                ),
              ),
              SizedBox(
                height: getSize(50),
              )
            ],
           ),
         )
        ],
      ),
    );
  }
}
