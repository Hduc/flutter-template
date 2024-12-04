import 'package:dating_app/core/app_export.dart';
import 'package:dating_app/core/utils/appbar.dart';
import 'package:dating_app/presentation/my_address_screen/common/address_details_container.dart';
import 'package:dating_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'controller/my_address_controller.dart';


class MyAddressScreen extends GetWidget<MyAddressController> {
  const MyAddressScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent,statusBarIconBrightness:Brightness.dark  ));
    return Scaffold(
        backgroundColor:Colors.white,

        body: Padding(
          padding: getPadding(left: getSize(16),right: getSize(16)),
          child: Column(
            children: [
             CustomAppBarText(
               title: 'My address',
             ),
              Divider(
                color: Color(0xFFE7E7E7),
                thickness: getSize(1.5),
              ),
              SizedBox(
                height: getSize(10),
              ),
              AddressDetailsContainer(),
              AddressDetailsContainer(
                  place: 'Office',
                address: '2972 Westheimer rd. santa ana, Illinois 85486 ',
              ),
              AddressDetailsContainer(
                place: 'Home 2',
                address: '2118 Thornridge cir. syracuse, connecticut 35624',
              ),
            ],
          ),
        ),



        bottomNavigationBar: CustomElevatedButton(
          onTap:() {
            Get.toNamed(
              AppRoutes.addNewAddressScreen,
            );
          },
            text: "lbl_add_address".tr,
            margin: getMargin(left: getSize(16), right: getSize(16), bottom: getSize(40)),
            buttonStyle: CustomButtonStyles.fillPrimary.copyWith(
                fixedSize: MaterialStateProperty.all<Size>(
                    Size(double.maxFinite, getSize(54)))),
            buttonTextStyle: theme.textTheme.titleMedium!));
  }

  onTapArrowleft22() {
    Get.back();
  }
}
