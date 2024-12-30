import 'controller/address_edit_controller.dart';
import 'package:dating_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class AddressEditScreen extends GetWidget<AddressEditController> {
  const AddressEditScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      body: Container(
        width: mediaQueryData.size.width,
        height: mediaQueryData.size.height,
        decoration: BoxDecoration(
          color: appTheme.whiteA700,
          image: DecorationImage(
            image: AssetImage(
              ImageConstant.imgAddressedit,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Spacer(),
              SizedBox(
                height: getSize(
                  180,
                ),
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        padding: getPadding(
                          left: getSize(179),
                          top: getSize(15),
                          right: getSize(179),
                          bottom: getSize(15),
                        ),
                        decoration: AppDecoration.white.copyWith(
                          borderRadius: BorderRadiusStyle.customBorderTL33,
                        ),
                        child: Divider(
                          height: getVerticalSize(
                            5,
                          ),
                          thickness: getVerticalSize(
                            5,
                          ),
                          color: appTheme.gray8004c,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: getPadding(
                          left: getSize(18),
                          right: getSize(18),
                          bottom: getSize(41),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "lbl_edit".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: CustomTextStyles.titleMediumBlack900,
                            ),
                            Padding(
                              padding: getPadding(
                                top: getSize(17),
                              ),
                              child: Divider(
                                height: getVerticalSize(
                                  1,
                                ),
                                thickness: getVerticalSize(
                                  1,
                                ),
                                color: theme.colorScheme.onPrimaryContainer,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: getSize(16),
                              ),
                              child: Text(
                                "lbl_delete".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: CustomTextStyles.titleMediumBlack900,
                              ),
                            ),
                          ],
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
    );
  }
}
