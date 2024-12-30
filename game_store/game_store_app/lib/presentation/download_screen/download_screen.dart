import 'package:getwidget/components/progress_bar/gf_progress_bar.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../widgets/app_bar/custum_bottom_bar_controller.dart';
import '../../widgets/custom_icon_button.dart';
import '../download_screen/widgets/download_item_widget.dart';
import 'controller/download_controller.dart';
import 'models/download_item_model.dart';
import 'package:flutter/material.dart';
import 'package:game_store_app/core/app_export.dart';
import 'package:game_store_app/presentation/coupon_code_page/coupon_code_page.dart';
import 'package:game_store_app/presentation/home_screen_container_page/home_screen_container_page.dart';
import 'package:game_store_app/widgets/app_bar/appbar_image.dart';
import 'package:game_store_app/widgets/app_bar/appbar_title.dart';
import 'package:game_store_app/widgets/app_bar/custom_app_bar.dart';
import 'package:game_store_app/widgets/custom_bottom_bar.dart';
import 'package:game_store_app/widgets/custom_button.dart';

import 'models/download_model.dart';

class DownloadScreen extends StatefulWidget {
  const DownloadScreen({Key? key}) : super(key: key);

  @override
  State<DownloadScreen> createState() => _DownloadScreenState();
}

class _DownloadScreenState extends State<DownloadScreen> {
  List<Downloading> downloading  = DownloadModel.getDownloading();
  List<DownloadItemModel> completed  = DownloadModel.getCompleted();


  DownloadController controller  = Get.put(DownloadController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CustomBottomBarController>(
      init: CustomBottomBarController(),
      builder:(customButtomBar) =>  SafeArea(
          child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        appBar: CustomAppBar(
            height: getVerticalSize(66),
            leadingWidth: 44,
            leading: AppbarImage(
                height: getSize(24),
                width: getSize(24),
                svgPath: ImageConstant.imgArrowleftBlack900,
                margin: getMargin(left: 20, top: 17, bottom: 25),
                onTap: () {
                  // onTapArrowleft13();
                  customButtomBar.getIndex(0);
                }),
            centerTitle: true,
            title: AppbarTitle(text: "lbl_download".tr),
            styleType: Style.bgFillWhiteA700),
        body: ListView(
          children: [
                Container(
                width: double.maxFinite,
                child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: getPadding(left: 20, top: 27),
                          child: Text("lbl_downloading".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtHeadline))),
                  Padding(
                      padding: getPadding(left: 20, top: 13, right: 20),
                      child: ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
                          primary: false,
                          shrinkWrap: true,
                          separatorBuilder: (context, index) {
                            return SizedBox(height: getVerticalSize(16));
                          },
                          itemCount:downloading.length,
                          itemBuilder: (context, index) {
                            Downloading model = downloading[index];
                            return DownloadItemWidget(model);
                          })),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: getPadding(left: 20, top: 27,right: 20),
                          child: Text("lbl_complated".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtHeadline))),



                  Padding(
                      padding: getPadding(left: 20, top: 13, right: 20),
                      child: ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
                          primary: false,
                          shrinkWrap: true,
                          separatorBuilder: (context, index) {
                            return SizedBox(height: getVerticalSize(16));
                          },
                          itemCount: completed.length,
                          itemBuilder: (context, index) {
                            DownloadItemModel model = completed[index];
                            return CompletedWidget(model,index);
                          })),
                ])),
              ],
        ),
      )),
    );
  }
  onTapArrowleft13() {
    Get.back();
  }

  Widget DownloadItemWidget(Downloading model) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(getHorizontalSize(20)),
          color: ColorConstant.whiteA700,
          boxShadow: [
            BoxShadow(offset: Offset(0, 6),
                blurRadius: 30,
                color: ColorConstant.black900.withOpacity(0.07))
          ]
      ),
      child: Padding(
        padding: getPadding(all: 4),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CustomImageView(
                  imagePath: model.image,
                  height: getSize(
                    90,
                  ),
                  width: getSize(
                    90,
                  ),
                  radius: BorderRadius.circular(
                    getHorizontalSize(
                      20,
                    ),
                  ),
                ),
                SizedBox(width: getHorizontalSize(16),),
                Container(
                  width: getSize(206),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        model.name!,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtHeadline,
                      ),
                      SizedBox(width: getVerticalSize(8),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "1.2 GB / 2.0 GB",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtFootnoteGray600,
                          ),
                          Text(
                            "80MB/s",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtFootnoteBlack900,
                          ),
                        ],
                      ),

                      Padding(
                        padding: getPadding(top: 4),
                        child: GFProgressBar(
                          percentage: 0.2,
                          backgroundColor : ColorConstant.blue50,
                          progressBarColor: ColorConstant.lightBlueA700,
                          padding:EdgeInsets.zero,
                          lineHeight: getSize(4),
                          radius: 20,
                          margin: EdgeInsets.zero,
                        ),





                      ),
                      Padding(
                        padding: getPadding(
                          top: 10,
                        ),
                        child: Text(
                          "lbl_downloading2".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtFootnoteGray600,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Row(
              children: [
                CustomIconButton(
                  height: 24,
                  width: 24,
                  child: CustomImageView(
                    svgPath: ImageConstant.imgTrashGray900,
                  ),
                ),
                CustomIconButton(
                  height: 24,
                  width: 24,
                  child: CustomImageView(
                    svgPath: ImageConstant.imgCloseBlack900,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget CompletedWidget(DownloadItemModel model, int index) {
    return Dismissible(
      background: Container(
        color: ColorConstant.red500,
        child: Padding(
          padding:getPadding(right: 21),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
           Column(
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               // CustomIconButton(
               //
               //   height: 24,
               //   width: 24,
               //   child: CustomImageView(
               //     svgPath: ImageConstant.deletIcon,
               //   ),
               // ),
               CustomImageView(
                 svgPath: ImageConstant.deletIcon,
                 height: getVerticalSize(24),
                 width: getVerticalSize(24),
               ),
               Padding(
                   padding: getPadding(top: 4),
                   child: Text("Uninstall",
                       overflow: TextOverflow.ellipsis,
                       textAlign: TextAlign.left,
                       style: AppStyle.txtFootnoteWhiteA700))
             ],
           )
            ],
          ),
        ),
      ),
      key: ValueKey<int>(index),
      direction: DismissDirection.endToStart,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(getHorizontalSize(20)),
            color: ColorConstant.whiteA700,
            boxShadow: [
              BoxShadow(offset: Offset(0, 6),
                  blurRadius: 30,
                  color: ColorConstant.black900.withOpacity(0.07))
            ]
        ),
        child: Padding(
          padding: getPadding(all: 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CustomImageView(
                    imagePath: model.image,
                    height: getSize(
                      60,
                    ),
                    width: getSize(
                      60,
                    ),
                    radius: BorderRadius.circular(
                      getHorizontalSize(
                        20,
                      ),
                    ),
                  ),
                  SizedBox(width: getHorizontalSize(16),),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(model.name!,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtHeadline),
                      Padding(
                          padding: getPadding(top: 5),
                          child: Text("Complted",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtAeonikRegular15Gray600))
                    ],
                  )
                ],
              ),
              CustomButton(
                  height: getVerticalSize(29),
                  width: getHorizontalSize(70),
                  text: "lbl_play".tr,
                  margin: getMargin(top: 0, right: 0, bottom: 0),
                  shape: ButtonShape.RoundedBorder14,
                  padding: ButtonPadding.PaddingAll6,
                  fontStyle: ButtonFontStyle.AeonikBold14)
            ],
          ),
        ),
      ),
    );
  }


}
