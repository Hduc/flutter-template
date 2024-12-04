import 'package:dating_app/core/app_export.dart';
import 'package:dating_app/core/utils/appbar.dart';

import 'package:flutter/material.dart';

import '../../generated/assets.dart';
import '../notification_screen/widgets/notification_item_widget.dart';
import 'controller/notification_controller.dart';

class NotificationScreen extends GetWidget<NotificationController> {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
          CustomAppBarText(
            title: 'Notifications',
          ),
            Divider(
             color: Color(0xFFE7E7E7),
             thickness:getSize(1.5),
            ),

         GetBuilder<NotificationController>(builder: (controller) {
           return controller.isNotification?Expanded(
               child: GetBuilder<NotificationController>(builder: (controller) {
                 return ListView.separated(
                     padding: getPadding(left: getSize(16),right: getSize(16)),
                     physics: BouncingScrollPhysics(),
                     shrinkWrap: true,
                     separatorBuilder: (context, index) {
                       return SizedBox(height: getVerticalSize(16));
                     },
                     itemCount:controller.messageList.length,
                     itemBuilder: (context, index) {

                       return NotificationItemWidget(
                         title:controller.messageList[index].title ,
                         discription:controller.messageList[index].discription ,
                         time:controller.messageList[index].time ,
                       );
                     });
               },
                 init: NotificationController(),
               )
           ):Expanded(
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                 GestureDetector(
                     onTap: () {
                       controller.isNotification =true;
                       controller.update();
                     },
                     child: Image.asset(Assets.imagesNotiIcon,height: getSize(154),)),
                 SizedBox(
                   height: getSize(8),
                 ),
                 Text('No notifications yet',style: TextStyle(
                   fontWeight: FontWeight.w700,
                   fontSize: getFontSize(22),
                   color: Colors.black,

                 ),),

                 Padding(
                   padding: getPadding(top: getSize(8),left: getSize(50),right: getSize(50)),
                   child: Text('The best way to stay in the present moment is to turn off your notifications.',style: TextStyle(
                     fontWeight: FontWeight.w400,
                     fontSize: getFontSize(16),
                     color: Colors.black,

                   ),textAlign: TextAlign.center,),
                 ),

               ],
             ),
           );
         },init: NotificationController(),)
          ],
        ));
  }


  onTapArrowleft21() {
    Get.back();
  }
}
