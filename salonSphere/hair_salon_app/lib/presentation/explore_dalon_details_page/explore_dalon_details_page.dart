import 'package:hair_salon_app/presentation/home_page_screen/controller/home_page_controller.dart';
import 'package:hair_salon_app/presentation/you_have_been_arrived_screen/you_have_been_arrived_screen.dart';

import '../../widgets/app_bar/appbar_image.dart';
import 'controller/explore_dalon_details_controller.dart';
import 'models/explore_dalon_details_model.dart';
import 'package:flutter/material.dart';
import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/widgets/custom_icon_button.dart';
import 'package:hair_salon_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ExploreDalonDetailsPage extends StatefulWidget {
  @override
  State<ExploreDalonDetailsPage> createState() =>
      _ExploreDalonDetailsPageState();
}

class _ExploreDalonDetailsPageState extends State<ExploreDalonDetailsPage> {
  ExploreDalonDetailsController controller =
      Get.put(ExploreDalonDetailsController(ExploreDalonDetailsModel().obs));
  HomePageController homePageController = Get.put(HomePageController());

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   Get.dialog(
  //       AlertDialog(
  //         backgroundColor: Colors.transparent,
  //         contentPadding: EdgeInsets.zero,
  //         insetPadding: EdgeInsets.only(left: 0),
  //         content: ExploreScreen(),
  //       ),
  //       barrierDismissible: false);
  //   showDialog(
  //     context: context,
  //     builder: (context) {
  //       return Container();
  //     },
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          extendBodyBehindAppBar: true,
          resizeToAvoidBottomInset: false,
          backgroundColor: ColorConstant.whiteA700,
          body: SafeArea(
            child: Stack(
                children: [
                  CustomImageView(
                    height: double.maxFinite,
                    width: getVerticalSize(428),
                    imagePath: Constant.imagePath + "img_group3461.png",
                    fit: BoxFit.cover,
                  ),
                  Container(
            padding: getPadding(top: 24, right: 16, bottom: 16, left: 16),
            decoration: AppDecoration.white,
            child: Row(
              children: [
                AppbarImage(
                    height: getVerticalSize(24),
                    width: getHorizontalSize(26),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(right: 16),
                    onTap: () {
                      homePageController.selectedIndex.value = 0;
                    }),
                Expanded(
                  child: CustomTextFormField(
                    controller: controller.searchController,
                    hintText: "lbl_search_here".tr,
                    padding: TextFormFieldPadding.PaddingT13,
                    textInputAction: TextInputAction.done,
                    prefix: Container(
                        margin: getMargin(
                            left: 20, top: 11, right: 13, bottom: 11),
                        child: CustomImageView(
                            svgPath: ImageConstant.imgContrast)),
                    prefixConstraints:
                        BoxConstraints(maxHeight: getVerticalSize(46)),
                    onTap: () {
                      Get.toNamed(AppRoutes.searchScreen);
                    },
                  ),
                ),
              ],
            )),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
              margin: getMargin(left: 16, right: 16, bottom: 54),
              padding: getPadding(left: 16, bottom: 16, right: 20, top: 16),
              decoration: AppDecoration.outlineGray9000f
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
              child: Row(
                  // mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgRectangle2,
                        height: getVerticalSize(88),
                        width: getVerticalSize(110),
                        radius: BorderRadius.circular(getVerticalSize(10))),
                    Padding(
                        padding: getPadding(left: 16),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text("lbl_serenity_salon".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtHeadline),
                              Padding(
                                  padding: getPadding(top: 11),
                                  child: Row(children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgIclocation,
                                        height: getSize(24),
                                        width: getSize(24)),
                                    Padding(
                                        padding: getPadding(left: 3),
                                        child: Text("lbl_10_mtr_left".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtBodyGray600))
                                  ]))
                            ])),
                    Spacer(),
                    CustomIconButton(
                        height: 50,
                        width: 50,
                        variant: IconButtonVariant.OutlineGray9000f,
                        shape: IconButtonShape.CircleBorder12,
                        padding: IconButtonPadding.PaddingAll17,
                        onTap: () {
                          Get.dialog(
                            AlertDialog(
                              backgroundColor: Colors.transparent,
                              contentPadding: EdgeInsets.zero,
                              insetPadding: EdgeInsets.only(left: 0),
                              content: YouHaveBeenArrivedScreen(),
                            ),
                          );
                        },
                        child: CustomImageView(
                            svgPath: ImageConstant.imgLocationWhiteA700))
                  ])),
                  )
                ],
            ),
          ),
        );
  }

  onTapBtnLocationone() {
    Get.toNamed(
      AppRoutes.locationScreen,
    );
  }
}
