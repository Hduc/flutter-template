import '../controller/notification_controller.dart';
import 'package:dating_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NotificationItemWidget extends StatelessWidget {
  final String? title;
  final String? discription;
  final String? time;

  NotificationItemWidget(
    {
    Key? key, this.title, this.discription, this.time,
  }) : super(
          key: key,
        );


  var controller = Get.find<NotificationController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        all: getSize(16),
      ),
      decoration: AppDecoration.fill8.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Container(
            width: getSize(40),
            height: getSize(40),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(getSize(20)),
              ),
              shadows: [
                BoxShadow(
                  color: Color(0x14000000),
                  blurRadius: getSize(13),
                  offset: Offset(0, 2),
                  spreadRadius: 0,
                )
              ],
            ),
            child:Padding(
              padding:getPadding(all:getSize( 6.9)),
              child: CustomImageView(
                svgPath: ImageConstant.imgNotification,height: getSize(26),

              ),
            ) ,
          ),
          Expanded(
            child: Padding(
              padding: getPadding(
                left: getSize(14),
                top: getSize(8),
                right: getSize(51)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                     title?? 'notificationItemModelObj.offerTxt.value',
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: CustomTextStyles.titleLargeSemiBold,
                    ),

                  Padding(
                    padding: getPadding(
                      top: getSize(12),
                    ),
                    child: Text(
                        discription??'notificationItemModelObj.offeroneTxt.value',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles.bodyLargeGray600,
                      ),

                  ),
                  Padding(
                    padding: getPadding(
                      top: getSize(4),
                    ),
                    child: Text(
                        time??'notificationItemModelObj.timeTxt.value',
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: theme.textTheme.bodyLarge,
                      ),

                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
