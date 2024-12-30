// import 'package:percent_indicator/linear_percent_indicator.dart';
//
// import '../controller/download_controller.dart';
// import '../models/download_item_model.dart';
// import 'package:flutter/material.dart';
// import 'package:game_store_app/core/app_export.dart';
// import 'package:game_store_app/widgets/custom_icon_button.dart';
//
// // ignore: must_be_immutable
// class DownloadItemWidget extends StatelessWidget {
//   // DownloadItemWidget(this.downloadItemModelObj);
//   //
//   // DownloadItemModel downloadItemModelObj;
//
//   // var controller = Get.find<DownloadController>();
//
//   DownloadItemWidget(Downloading model);
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(getHorizontalSize(20)),
//         color: ColorConstant.whiteA700,
//         boxShadow: [
//           BoxShadow(offset: Offset(0, 6),
//           blurRadius: 30,
//           color: ColorConstant.black900.withOpacity(0.07))
//         ]
//       ),
//       child: Padding(
//         padding: getPadding(all: 4),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Row(
//               children: [
//                 CustomImageView(
//                   imagePath: ImageConstant.imgRectangle29310,
//                   height: getSize(
//                     90,
//                   ),
//                   width: getSize(
//                     90,
//                   ),
//                   radius: BorderRadius.circular(
//                     getHorizontalSize(
//                       20,
//                     ),
//                   ),
//                 ),
//                 SizedBox(width: getHorizontalSize(16),),
//                 Container(
//                   width: getSize(206),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         downloadItemModelObj.therobotpowarTxt.value,
//                         overflow: TextOverflow.ellipsis,
//                         textAlign: TextAlign.left,
//                         style: AppStyle.txtHeadline,
//                       ),
//                       SizedBox(width: getVerticalSize(8),),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Text(
//                             downloadItemModelObj.filesizeTxt.value,
//                             overflow: TextOverflow.ellipsis,
//                             textAlign: TextAlign.left,
//                             style: AppStyle.txtFootnoteGray600,
//                           ),
//                           Text(
//                             downloadItemModelObj.k80mbsTxt.value,
//                             overflow: TextOverflow.ellipsis,
//                             textAlign: TextAlign.left,
//                             style: AppStyle.txtFootnoteBlack900,
//                           ),
//                         ],
//                       ),
//
//                       Padding(
//                         padding: getPadding(top: 4),
//                         child: Container(
//                           child: LinearPercentIndicator(
//                             padding: EdgeInsets.zero,
//                             lineHeight: getSize(4),
//                             percent: 0.2,
//                             progressColor: Colors.red,
//                             width: getSize(206),
//
//                           ),
//                         ),
//                       ),
//                       Padding(
//                         padding: getPadding(
//                           top: 10,
//                         ),
//                         child: Text(
//                           "lbl_downloading2".tr,
//                           overflow: TextOverflow.ellipsis,
//                           textAlign: TextAlign.left,
//                           style: AppStyle.txtFootnoteGray600,
//                         ),
//                       ),
//                     ],
//                   ),
//                 )
//               ],
//             ),
//             Row(
//               children: [
//                 CustomIconButton(
//                   height: 24,
//                   width: 24,
//                   child: CustomImageView(
//                     svgPath: ImageConstant.imgTrashGray900,
//                   ),
//                 ),
//                 CustomIconButton(
//                   height: 24,
//                   width: 24,
//                   child: CustomImageView(
//                     svgPath: ImageConstant.imgCloseBlack900,
//                   ),
//                 ),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//
//
//
//
//
//
//       Container(
//       padding: getPadding(
//         all: 4,
//       ),
//       decoration: AppDecoration.outlineBlack90011.copyWith(
//         borderRadius: BorderRadiusStyle.roundedBorder20,
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           CustomImageView(
//             imagePath: ImageConstant.imgRectangle29310,
//             height: getSize(
//               90,
//             ),
//             width: getSize(
//               90,
//             ),
//             radius: BorderRadius.circular(
//               getHorizontalSize(
//                 20,
//               ),
//             ),
//           ),
//           Padding(
//             padding: getPadding(
//               left: 16,
//               top: 5,
//               bottom: 3,
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 Obx(
//                   () => Text(
//                     downloadItemModelObj.therobotpowarTxt.value,
//                     overflow: TextOverflow.ellipsis,
//                     textAlign: TextAlign.left,
//                     style: AppStyle.txtHeadline,
//                   ),
//                 ),
//                 Padding(
//                   padding: getPadding(
//                     top: 10,
//                   ),
//                   child: Row(
//                     children: [
//                       Obx(
//                         () => Text(
//                           downloadItemModelObj.filesizeTxt.value,
//                           overflow: TextOverflow.ellipsis,
//                           textAlign: TextAlign.left,
//                           style: AppStyle.txtFootnoteGray600,
//                         ),
//                       ),
//                       Padding(
//                         padding: getPadding(
//                           left: 74,
//                         ),
//                         child: Obx(
//                           () => Text(
//                             downloadItemModelObj.k80mbsTxt.value,
//                             overflow: TextOverflow.ellipsis,
//                             textAlign: TextAlign.left,
//                             style: AppStyle.txtFootnoteBlack900,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Padding(
//                   padding: getPadding(
//                     top: 3,
//                   ),
//                   child: Container(
//                     height: getVerticalSize(
//                       4,
//                     ),
//                     width: getHorizontalSize(
//                       206,
//                     ),
//                     decoration: BoxDecoration(
//                       color: ColorConstant.blue50,
//                       borderRadius: BorderRadius.circular(
//                         getHorizontalSize(
//                           2,
//                         ),
//                       ),
//                     ),
//                     child: ClipRRect(
//                       borderRadius: BorderRadius.circular(
//                         getHorizontalSize(
//                           2,
//                         ),
//                       ),
//                       child: LinearProgressIndicator(
//                         value: 0.59,
//                         backgroundColor: ColorConstant.blue50,
//                         valueColor: AlwaysStoppedAnimation<Color>(
//                           ColorConstant.lightBlueA700,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: getPadding(
//                     top: 10,
//                   ),
//                   child: Text(
//                     "lbl_downloading2".tr,
//                     overflow: TextOverflow.ellipsis,
//                     textAlign: TextAlign.left,
//                     style: AppStyle.txtFootnoteGray600,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           CustomIconButton(
//             height: 24,
//             width: 24,
//             margin: getMargin(
//               left: 8,
//               top: 46,
//               bottom: 20,
//             ),
//             child: CustomImageView(
//               svgPath: ImageConstant.imgTrashGray900,
//             ),
//           ),
//           CustomIconButton(
//             height: 24,
//             width: 24,
//             margin: getMargin(
//               left: 8,
//               top: 46,
//               bottom: 20,
//             ),
//             child: CustomImageView(
//               svgPath: ImageConstant.imgCloseBlack900,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
