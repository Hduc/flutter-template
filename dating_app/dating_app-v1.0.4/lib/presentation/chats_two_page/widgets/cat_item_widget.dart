import 'package:dating_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CatItemWidget extends StatelessWidget {
  final String? img;
  final String? name;
  final String? lastMessage;
  final String? time;
  final bool unseen;

  CatItemWidget(
   {
    Key? key, this.img, this.name, this.lastMessage, this.time, required this.unseen,
  }) : super(
          key: key,
        );



  // var controller = Get.find<ChatsTwoController>();

  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: AppDecoration.outline5.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Padding(
        padding: getPadding(all: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            CustomImageView(
              imagePath: img??ImageConstant.person4,
              height: getSize(
                58,
              ),
              width: getSize(
                58,
              ),
              radius: BorderRadius.circular(
                getHorizontalSize(
                  29,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: getPadding(
                  left: 16,
                  top: 5,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                     Text(
                       name??' catItemModelObj.nameTxt.value',
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: theme.textTheme.titleLarge,
                      ),

                    Padding(
                      padding: getPadding(
                        top: 8,
                      ),
                      child: Text(
                          lastMessage??' catItemModelObj.adjectiveTxt.value',
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: CustomTextStyles.bodyLargeGray600,
                        ),

                    ),
                  ],
                ),
              ),
            ),
            Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
              unseen?    Container(
                    height: getSize(24),
                    width: getSize(24),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFFAA6BE9),
                    ),
                    child: Text('1',style: TextStyle(
                      color: Colors.white,
                      fontSize: getFontSize(16),
                      fontWeight: FontWeight.w400,
                    ),),
                  ):SizedBox(),
                  SizedBox(
                    height: getSize(15),
                  ),
                  Text(
                   time?? 'catItemModelObj.timeTxt.value',
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: CustomTextStyles.bodyLargeGray600,
                  ),
                ],
              ),

          ],
        ),
      ),
    );
  }
}
