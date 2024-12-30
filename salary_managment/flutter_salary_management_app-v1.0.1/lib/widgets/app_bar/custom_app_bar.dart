// import 'package:flutter/material.dart';
// import 'package:flutter_salary_management_app/core/app_export.dart';
//
// // ignore: must_be_immutable
// class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
//   CustomAppBar({
//     Key? key,
//     this.height,
//     this.styleType,
//     this.leadingWidth,
//     this.leading,
//     this.title,
//     this.centerTitle,
//     this.actions,
//   }) : super(
//           key: key,
//         );
//
//   final double? height;
//
//   final Style? styleType;
//
//   final double? leadingWidth;
//
//   final Widget? leading;
//
//   final Widget? title;
//
//   final bool? centerTitle;
//
//   final List<Widget>? actions;
//
//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       elevation: 0,
//       toolbarHeight: height ?? 79.v,
//       automaticallyImplyLeading: false,
//       backgroundColor: Colors.transparent,
//       flexibleSpace: _getStyle(),
//       leadingWidth: leadingWidth ?? 0,
//       leading: leading,
//       title: title,
//       titleSpacing: 0,
//       centerTitle: centerTitle ?? false,
//       actions: actions,
//     );
//   }
//
//   @override
//   Size get preferredSize => Size(
//         SizeUtils.width,
//         height ?? 79.v,
//       );
//   _getStyle() {
//     switch (styleType) {
//       case Style.bgOutline_1:
//         return Container(
//           height: 10.v,
//           width: double.maxFinite,
//           decoration: BoxDecoration(
//             border: Border(
//               bottom: BorderSide(
//                 color: Colors.red,
//                 width: 1.h,
//               ),
//             ),
//           ),
//         );
//       case Style.bgOutline:
//         return Container(
//           height: 79.v,
//           width: double.maxFinite,
//           decoration: BoxDecoration(
//             color: appTheme.whiteA700,
//             border: Border(
//               bottom: BorderSide(
//                 color: appTheme.gray200,
//                 width: 1.h,
//               ),
//             ),
//           ),
//         );
//       default:
//         return null;
//     }
//   }
// }
//
// enum Style {
//   bgOutline_1,
//   bgOutline,
// }
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_salary_management_app/core/utils/size_utils.dart';

// ignore: must_be_immutable
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar({
    Key? key,
    this.height,
    this.leadingWidth,
    this.leading,
    this.title,
    this.centerTitle,
    this.actions,
    this.statusBarIconBrightness,
    this.statusBarBrightness,
  }) : super(
    key: key,
  );

  final double? height;

  final Brightness? statusBarIconBrightness;

  final Brightness? statusBarBrightness;

  final double? leadingWidth;

  final Widget? leading;

  final Widget? title;

  final bool? centerTitle;

  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      scrolledUnderElevation: 0,
      toolbarHeight: height ?? 31.v,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarIconBrightness: statusBarIconBrightness,
        statusBarBrightness: statusBarBrightness,
      ),
      // leadingWidth: leadingWidth ?? 0,
      leading: leading,
      title: title,
      titleSpacing: 0,
      centerTitle: centerTitle ?? false,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size(
    SizeUtils.width,
        height ?? 79.v,
  );
}
