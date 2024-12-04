import 'package:jewellery_app/core/app_export.dart';
import 'package:flutter/material.dart';

// // ignore: must_be_immutable
// class ProductdetailsItemWidget extends StatelessWidget {
//   ProductdetailsItemWidget(
//     this.productdetailsItemModelObj, {
//     Key? key,
//     this.onTapProductdetails,
//   }) : super(
//           key: key,
//         );
//
//   ProductdetailsItemModel productdetailsItemModelObj;
//
//   var controller = Get.find<TopPicksForYouController>();
//
//   VoidCallback? onTapProductdetails;
//
//   @override
//   Widget build(BuildContext context) {
//     return Align(
//       alignment: Alignment.bottomCenter,
//       child: GestureDetector(
//         onTap: () {
//           onTapProductdetails?.call();
//         },
//         child: Container(
//           padding: getPadding(
//             left: 7,
//             top: 12,
//             right: 7,
//             bottom: 12,
//           ),
//           decoration: AppDecoration.fillGray.copyWith(
//             borderRadius: BorderRadiusStyle.roundedBorder16,
//           ),
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               CustomImageView(
//                 svgPath: ImageConstant.imgFavorite,
//                 height: getVerticalSize(20),
//                 width: getHorizontalSize(19),
//                 alignment: Alignment.centerRight,
//                 margin: getMargin(
//                   right: 2,
//                 ),
//               ),
//               CustomImageView(
//                 imagePath: ImageConstant.imgRectangle376,
//                 height: getVerticalSize(101),
//                 width: getHorizontalSize(145),
//                 alignment: Alignment.center,
//                 margin: getMargin(
//                   top: 16,
//                 ),
//               ),
//               Padding(
//                 padding: getPadding(
//                   top: 20,
//                 ),
//                 child: Obx(
//                   () => Text(
//                     productdetailsItemModelObj.title!,
//                     style: theme.textTheme.bodyLarge,
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: getPadding(
//                   top: 11,
//                 ),
//                 child: Text(
//                   "${productdetailsItemModelObj.regulerPrice}",
//                   style: theme.textTheme.titleSmall,
//                 ),
//               ),
//               Padding(
//                 padding: getPadding(
//                   top: 6,
//                 ),
//                 child: Row(
//                   children: [
//                     SizedBox(
//                       height: getVerticalSize(17),
//                       width: getHorizontalSize(46),
//                       child: Stack(
//                         alignment: Alignment.bottomCenter,
//                         children: [
//                           Align(
//                             alignment: Alignment.center,
//                             child: Text(
//                               "lbl_25_00".tr,
//                               style: CustomTextStyles.bodyMediumGray600,
//                             ),
//                           ),
//                           Align(
//                             alignment: Alignment.bottomCenter,
//                             child: Container(
//                               height: getVerticalSize(1),
//                               width: getHorizontalSize(45),
//                               margin: getMargin(
//                                 bottom: 6,
//                               ),
//                               decoration: BoxDecoration(
//                                 color: appTheme.gray600,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Padding(
//                       padding: getPadding(
//                         left: 8,
//                       ),
//                       child: Text(
//                         "lbl_12_off".tr,
//                         style: CustomTextStyles.bodyMediumGreen700,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Align(
//                 alignment: Alignment.centerRight,
//                 child: Padding(
//                   padding: getPadding(
//                     top: 17,
//                   ),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     children: [
//                       CustomElevatedButton(
//                         width: getHorizontalSize(49),
//                         text: "lbl_4_31".tr,
//                         rightIcon: Container(
//                           margin: getMargin(
//                             left: 2,
//                           ),
//                           child: CustomImageView(
//                             svgPath: ImageConstant.imgStar,
//                           ),
//                         ),
//                       ),
//                       Padding(
//                         padding: getPadding(
//                           left: 6,
//                           top: 2,
//                         ),
//                         child: Text(
//                           "lbl_7".tr,
//                           style: theme.textTheme.bodySmall,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// ignore: non_constant_identifier_names
Widget product_formate(
  data,
  function,
  favIconWidget,
) {
  return GestureDetector(
      onTap: function,
      child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                getHorizontalSize(16),
              ),
              border: Border.all(color: appTheme.gray20),
              color: appTheme.white),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: getPadding(top: 0, left: 8, right: 8),
                child: Container(
                  height: getSize(146),
                  width: double.infinity,

                  child: Padding(
                      padding: getPadding(top: 4, left: 4, right: 4),
                      child: Container(
                        child: Stack(
                          children: [
                            Center(
                              child: Container(
                                width: double.infinity,
                                child: Padding(
                                  padding: getPadding(left: 12, right: 12),
                                  child: CustomImageView(
                                      imagePath: data.image, fit: BoxFit.fill),
                                ),
                              ),
                            ),
                            Padding(
                              padding: getPadding(top: 10),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      data.isRecommended!
                                          ? Align(
                                              alignment: Alignment.centerRight,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    color: appTheme.buttonColor,
                                                    // color: appTheme.gray700,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            getHorizontalSize(
                                                                12))),
                                                child: Padding(
                                                  padding: getPadding(
                                                      left: 8,
                                                      right: 8,
                                                      top: 4,
                                                      bottom: 2),
                                                  child: Center(
                                                    child: Text(
                                                      "Recommended",
                                                      style: CustomTextStyles
                                                          .txtSFProDisplayRegular12Gray10001,
                                                    ),
                                                  ),
                                                ),
                                              )
                                              // .marginOnly(top: 10.h, left: 14.h),
                                              )
                                          : data.isOnSale!
                                              ? Align(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                        color: theme.colorScheme
                                                            .primary,
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                getHorizontalSize(
                                                                    12))),
                                                    child: Padding(
                                                      padding: getPadding(
                                                          left: 8,
                                                          right: 8,
                                                          top: 2,
                                                          bottom: 2),
                                                      child: Center(
                                                        child: Text(
                                                          "SALE",
                                                          style: CustomTextStyles
                                                              .txtSFProDisplayRegular12Gray10001,

                                                          // style: AppStyle
                                                          //   .txtSFProDisplayRegular12Gray10001,
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                  // .marginOnly(top: 10.h, left: 14.h),
                                                  )
                                              : SizedBox(),
                                      favIconWidget
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )),

                  // CustomImageView(
                  //
                  //   imagePath: data.image,
                  //   fit: BoxFit.fill,
                  // ),
                ),
              ),
              // getVerSpace(7.h),
              Padding(
                padding: getPadding(top: 12, left: 12, right: 8),
                child: data.rate == "0.00"
                    ? SizedBox(
                        height: getVerticalSize(12),
                      )
                    : Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CustomImageView(
                            svgPath: ImageConstant.imgStar,
                            color: appTheme.amber500,
                            height: getSize(12),
                            width: getSize(12),
                          ),
                          SizedBox(
                            width: getHorizontalSize(4),
                          ),
                          Text(
                            data.rate,
                            style: CustomTextStyles.txtBody.copyWith(
                                fontSize: getFontSize(12),
                                color: appTheme.black900),
                          ),
                          SizedBox(
                            width: getHorizontalSize(2),
                          ),
                          Text(
                            "lbl_7".tr,
                            style: CustomTextStyles.txtBody.copyWith(
                                fontSize: getFontSize(12),
                                color: appTheme.black900),
                          ),
                        ],
                      ),
              ),
              Padding(
                padding: getPadding(top: 6, left: 12, right: 12),
                child: Container(
                    // height: data.title!.length > 30 ? getSize(20) : getSize(20),
                    child: Text(
                  data.title!,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: theme.textTheme.bodyLarge!
                      .copyWith(fontWeight: FontWeight.w700),
                  maxLines: 2,
                )),
              ),
              Padding(
                  padding: getPadding(top: 8, left: 12, right: 12),
                  child: Row(children: [
                    SizedBox(
                        height: getVerticalSize(17),
                        // width: getHorizontalSize(46),
                        child:
                            Stack(alignment: Alignment.bottomCenter, children: [
                          Align(
                              alignment: Alignment.center,
                              child: Text(
                                data.regulerPrice!,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: CustomTextStyles.bodyMediumGray600,
                              )),
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                  height: getVerticalSize(1),
                                  width: getHorizontalSize(45),
                                  margin: getMargin(bottom: 6),
                                  decoration:
                                      BoxDecoration(color: appTheme.gray600)))
                        ])),
                    Padding(
                        padding: getPadding(left: 8),
                        child: Text(
                          "${data.discount} OFF",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: CustomTextStyles.bodyMediumGreen700!,
                        )
                        // Text(
                        //      "${100 * (double.parse(
                        //          data.regulerPrice!) -
                        //          double.parse(data.sellprice!)) ~/
                        //          double.parse(
                        //              data.regulerPrice!)}% OFF",
                        //      overflow: TextOverflow
                        //          .ellipsis,
                        //      textAlign: TextAlign
                        //          .left,
                        //      style: AppStyle
                        //          .txtSFProDisplayRegular14Green700)
                        )
                  ])),
              SizedBox(),
              Padding(
                  padding: getPadding(top: 8, left: 12, right: 12),
                  child: Text(
                    data.sellprice!,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: theme.textTheme.titleSmall,
                  )),

//469F1D
//               data.rate == "0.00"
//                   ? SizedBox(
//                       height: getVerticalSize(12),
//                     )
//                   : Row(
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: [
//                           Container(
//                             decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(
//                                   getHorizontalSize(12),
//                                 ),
//                                 color: appTheme.green),
//                             child: Padding(
//                               padding: getPadding(left: 6, right: 6),
//                               child: Row(
//                                 children: [
//                                   Text(
//                                     data.rate,
//                                     style: CustomTextStyles.bodySmallGray10002,
//                                   ),
//                                   SizedBox(
//                                     width: getHorizontalSize(2),
//                                   ),
//                                   CustomImageView(
//                                     svgPath: ImageConstant.imgStar,
//                                     height: getSize(12),
//                                     width: getSize(12),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//
//                           // CustomElevatedButton(width: getHorizontalSize(49), text: "lbl_4_31".tr, rightIcon: Container(margin: getMargin(left: 2), child: CustomImageView(svgPath: ImageConstant.imgStar))),
//                           Padding(
//                               padding: getPadding(left: 6, top: 2, right: 7.98),
//                               child: Text("lbl_7".tr,
//                                   style: theme.textTheme.bodySmall))
//                         ])

              // getVerSpace(6.h),
            ],
          )));
}
