import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import '../../routes/app_routes.dart';
import '../../theme/app_decoration.dart';
import '../../theme/app_style.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_image_view.dart';
import 'models/homepage_vthree_model.dart';
import 'models/listportfolio1_item_model.dart';

class PortfolioAllData extends StatefulWidget {
  const PortfolioAllData({Key? key}) : super(key: key);

  @override
  State<PortfolioAllData> createState() => _PortfolioAllDataState();
}

class _PortfolioAllDataState extends State<PortfolioAllData> {
  List<Listportfolio1ItemModel> data = HomepageVthreeModel.getPortfolioData();
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
                            Text("Portfilo",
                                overflow: TextOverflow.ellipsis,
                                style: AppStyle.txtInterSemiBold20
                                    .copyWith(
                                    height: getVerticalSize(1.12))),
                          ],
                        ),






                      ],
                    ).paddingSymmetric(horizontal: 24),
                  ),
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
                                child: GridView.builder(
                                  padding: EdgeInsets.only(
                                      left: 24,right: 14),
                                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      mainAxisExtent: getVerticalSize(140),
                                      mainAxisSpacing: getVerticalSize(10),
                                      crossAxisSpacing: 0),
                                  itemCount: data.length,
                                  itemBuilder: (BuildContext context, int index) {
                                    Listportfolio1ItemModel model = data[index];
                                    return GestureDetector(
                                      onTap: (){
                                        Get.toNamed(AppRoutes.sbuxStockScreen);
                                      },
                                      child: IntrinsicWidth(
                                        child: Align(
                                          alignment: Alignment.centerRight,
                                          child: Container(
                                            width: getVerticalSize(183),
                                            margin: getMargin(
                                              right: 8,
                                            ),
                                            padding: getPadding(
                                              left: 16,
                                              top: 17,
                                              right: 16,
                                              bottom: 17,
                                            ),
                                            decoration:
                                            model.progressType=='up'?AppDecoration.fillLightgreen100.copyWith(
                                              borderRadius:
                                              BorderRadiusStyle.roundedBorder24,
                                            ):AppDecoration.fillLightpurple100.copyWith(
                                              borderRadius:
                                              BorderRadiusStyle.roundedBorder24,
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                                  children: [
                                                    CustomImageView(
                                                      imagePath: model.icon,
                                                      height: getSize(
                                                        40.00,
                                                      ),
                                                      width: getSize(
                                                        40.00,
                                                      ),
                                                      radius: BorderRadius.circular(
                                                        getHorizontalSize(
                                                          20.00,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: getPadding(
                                                        left: 12,
                                                      ),
                                                      child: Column(
                                                        crossAxisAlignment:
                                                        CrossAxisAlignment.start,
                                                        mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                        children: [
                                                          Text(
                                                            model.title!,
                                                            overflow:
                                                            TextOverflow.ellipsis,
                                                            textAlign: TextAlign.left,
                                                            style:  model.progressType == 'up'?AppStyle
                                                                .txtInterBold14Gray800
                                                                .copyWith(
                                                              height: getVerticalSize(
                                                                1.19,
                                                              ),
                                                            ):AppStyle
                                                                .txtInterBoldWhite14
                                                                .copyWith(
                                                              height: getVerticalSize(
                                                                1.19,
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding: getPadding(
                                                              top: 6,
                                                            ),
                                                            child: Text(
                                                              model.subtitle!,
                                                              overflow:
                                                              TextOverflow.ellipsis,
                                                              textAlign: TextAlign.left,
                                                              style: model.progressType == 'up'?AppStyle
                                                                  .txtInterRegularblack
                                                                  .copyWith(
                                                                height: getVerticalSize(
                                                                  1.27,
                                                                ),
                                                              ):AppStyle
                                                                  .txtInterRegularDarkeshGray400
                                                                  .copyWith(
                                                                height: getVerticalSize(
                                                                  1.27,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Padding(
                                                  padding: getPadding(
                                                    top: 15,
                                                  ),
                                                  child: Text(
                                                    model.rate!,
                                                    overflow: TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: model.progressType == 'up'?
                                                    AppStyle.txtInterBold16.copyWith(
                                                      height: getVerticalSize(
                                                        1.24,
                                                      ),
                                                    ): AppStyle.txtInterRegular16White.copyWith(
                                                      height: getVerticalSize(
                                                        1.24,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: getPadding(
                                                    top: 6,
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      CustomImageView(
                                                        svgPath:
                                                        model.progressType == 'up'
                                                            ? ImageConstant
                                                            .imgCheckmarkGray800
                                                            : ImageConstant
                                                            .imgCheckmarkDown800,
                                                        height: getSize(
                                                          14.00,
                                                        ),
                                                        width: getSize(
                                                          14.00,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: getPadding(
                                                          left: 4,
                                                        ),
                                                        child: Text(
                                                          model.progress!,
                                                          overflow: TextOverflow.ellipsis,
                                                          textAlign: TextAlign.left,
                                                          style:  model.progressType == 'up'
                                                              ?AppStyle
                                                              .txtInterRegular12Gray800
                                                              .copyWith(
                                                            height: getVerticalSize(
                                                              1.27,
                                                            ),
                                                          ):AppStyle
                                                              .txtInterRegular12White
                                                              .copyWith(
                                                            height: getVerticalSize(
                                                              1.27,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),)
                  ).paddingOnly(top: getVerticalSize(142))],
              ),
            ),
          )),
    );
  }
}
