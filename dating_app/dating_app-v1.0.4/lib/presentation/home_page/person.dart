import 'package:dating_app/core/app_export.dart';
import 'package:flutter/material.dart';
import '../../widgets/custom_elevated_button.dart';


class Person extends StatelessWidget {
  final bool isNear;
  final String? img;
  final String? near;
  final String? name;
  final String? location;


  const Person({super.key, required this.isNear, this.img, this.near, this.name, this.location});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: getSize(6)),
      child: Container(
        clipBehavior: Clip.antiAlias,
        // width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.00, -1.00),
              end: Alignment(0, 1),
              colors: [Colors.black.withOpacity(0), Colors.black.withOpacity(0.8500000238418579)],
            ),
            borderRadius: BorderRadius.circular(getSize(32))
        ),
        child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.center,
          children: [
            CustomImageView(
              imagePath: img??ImageConstant.person1,
              fit: BoxFit.cover,
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                padding: getPadding(
                  left: getSize(20),
                  top: getSize(22),
                  right: getSize(20),
                  bottom: getSize(24),
                ),
                decoration: AppDecoration
                    .gradientnameblack900opacity0nameblack900opacity085
                    .copyWith(
                  borderRadius:
                  BorderRadiusStyle.roundedBorder32,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: getSize(2.5),
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: getSize(5),
                        ),
                        Expanded(
                          child: Container(
                            height:getSize(2.5),
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: getSize(5),
                        ),
                        Expanded(
                          child: Container(
                            height: getSize(2.5),
                            decoration: BoxDecoration(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    isNear?CustomElevatedButton(
                      text: near??"lbl_2_5_km".tr,
                      leftIcon: Container(
                        margin: getMargin(
                          right:getSize(1)
                        ),
                        child: CustomImageView(
                          svgPath: ImageConstant.imgRewind,
                        ),
                      ),
                      buttonStyle: CustomButtonStyles
                          .fillGray50TL6
                          .copyWith(
                          fixedSize: MaterialStateProperty
                              .all<Size>(Size(
                            getSize(
                              65
                            ),
                            getSize(
                                25
                            ),
                          ))),
                      buttonTextStyle:
                      CustomTextStyles.bodyMediumWhiteA700,
                    ):SizedBox(),
                    Padding(
                      padding: getPadding(
                        top: getSize(8)
                      ),
                      child: Text(
                        name??"msg_jenny_wilson_24".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: CustomTextStyles
                            .titleLargeWhiteA700,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top:getSize(8.4),
                      ),
                      child: Text(
                        location??"lbl_new_york_usa".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style:
                        CustomTextStyles.bodyLargeWhiteA700,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: getSize(16)
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                // index =index+1;
                                // print('INdex is Press ==$index');
                              },
                              child: Card(
                                clipBehavior: Clip.antiAlias,
                                elevation: 0,
                                margin: EdgeInsets.all(0),
                                color: appTheme.whiteA700,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadiusStyle
                                      .roundedBorder12,
                                ),
                                child: Container(
                                  height: getSize(
                                    41,
                                  ),

                                  padding: getPadding(
                                    top: getSize(9),
                                    bottom: getSize(9),
                                  ),
                                  decoration:
                                  AppDecoration.white.copyWith(
                                    borderRadius: BorderRadiusStyle
                                        .roundedBorder12,
                                  ),
                                  child: CustomImageView(
                                    svgPath: ImageConstant
                                        .imgArrowrightBlack900,
                                    height: getSize(
                                      22,
                                    ),
                                    width: getSize(
                                      22,
                                    ),
                                    alignment: Alignment.center,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: getSize(10)
                          ),
                          Expanded(
                            child: Card(
                              clipBehavior: Clip.antiAlias,
                              elevation: 0,

                              color: theme.colorScheme.primary,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadiusStyle
                                    .roundedBorder12,
                              ),
                              child: Container(
                                height: getSize(
                                  41,
                                ),

                                padding: getPadding(
                                  top: getSize(9),
                                  bottom: getSize(9),
                                ),
                                decoration:
                                AppDecoration.fill.copyWith(
                                  borderRadius: BorderRadiusStyle
                                      .roundedBorder12,
                                ),
                                child: CustomImageView(
                                  svgPath: ImageConstant
                                      .imgIcheart,
                                  height: getSize(
                                    22,
                                  ),
                                  width: getSize(
                                    22,
                                  ),
                                  alignment: Alignment.center,
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
          ],
        ),
      ),
    );
  }
}
