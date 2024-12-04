import 'package:dating_app/core/app_export.dart';
import 'package:flutter/material.dart';
import '../../../generated/assets.dart';

class AddressDetailsContainer extends StatelessWidget {
  final String? place;
  final String? address;
  const AddressDetailsContainer({super.key, this.place, this.address});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(bottom: getSize(16)),
      child: Container(
        decoration: BoxDecoration(
            color: Color(0xFFF8F8F8),
            borderRadius: BorderRadius.circular(getSize(12))
        ),
        child: Padding(
          padding: getPadding(all: getSize(16)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: getSize(34),
                height:  getSize(34),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: OvalBorder(),
                  shadows: [
                    BoxShadow(
                      color: Color(0x14000000),
                      blurRadius: getSize(13),
                      offset: Offset(0, 2),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Padding(
                  padding:getPadding(all:getSize(6.9)),
                  child: CustomImageView(
                    svgPath: Assets.imagesImgLocationPrimary,

                  ),
                ) ,
              ),
              SizedBox(
                width: getSize(16),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(place??'Home',style: TextStyle(
                      color: Colors.black,
                      fontSize: getFontSize(18),
                      fontWeight: FontWeight.w700,
                    ),),
                    Padding(
                      padding: getPadding(top: getSize(8)),
                      child: Text(address??'4140 Parker rd. allentown, new mexico 31134',style: TextStyle(
                        color: Colors.black,
                        fontSize: getFontSize(16),
                        fontWeight: FontWeight.w400,
                      ),),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: getSize(30),
              ),
              GestureDetector(
          onTap: () {
            //
            showModalBottomSheet(
              backgroundColor: Colors.transparent,
              context: context,
              builder: (BuildContext context) {
                return Container(
                 height: getSize(150),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topRight: Radius.circular(getSize(32)),topLeft: Radius.circular(getSize(32)))
                  ),
                  child: Padding(
                    padding: getPadding(top: getSize(15),left: getSize(18),right: getSize(18)),
                    child: Column(
                      children: [
                        Container(
                          height: getSize(5),
                          width: getSize(70),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(getSize(10)),
                            color: Color(0xFF3C3C434D)
                          ),
                        ),
                        GestureDetector(
                          onTap:() {
                            Get.back();
                            Get.toNamed(
                              AppRoutes.editAddressScreen,
                            );
                          },
                          child: Container(
                            width: double.infinity,
                            alignment: Alignment.center,
                            child: Padding(
                              padding: getPadding(top: getSize(37),bottom: getSize(10)),
                              child: Text('Edit',style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: getFontSize(18),
                              ),),
                            ),
                          ),
                        ),
                        Divider(
                           color: Color(0xFFD9D9D9),
                          thickness: getSize(1.5),
                        ),
                        GestureDetector(
                            onTap: () {
                              {
                                Get.back();
                                showDialog<String>(
                                  context: context,
                                  builder: (BuildContext context) => AlertDialog(
                                    backgroundColor: Colors.white,
                                    shape:  RoundedRectangleBorder(borderRadius:
                                    BorderRadius.all(Radius.circular(getSize(16)))),
                                    insetPadding: getPadding(left: getSize(27),right: getSize(27)),
                                    title: Padding(
                                      padding: getPadding(left: getSize(15),right: getSize(15)),
                                      child: Text('Are you sure you want delete address',style: TextStyle(
                                        color: Colors.black,
                                        fontSize: getFontSize(18),
                                        fontWeight: FontWeight.w600,
                                      ),),
                                    ),

                                    actions: <Widget>[
                                      Row(
                                        children: [
                                          Expanded(
                                            child: GestureDetector(
                                              onTap: () {
                                                Get.back();
                                              },
                                              child: Padding(
                                                padding: getPadding(left: getSize(30),bottom: getSize(20)),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(8),
                                                      border: Border.all(
                                                        color: Color(0xFFAA6BE9),
                                                        width: getSize(1.5),
                                                      )
                                                  ),
                                                  child: Padding(
                                                    padding:  getPadding(top: getSize(14),bottom: getSize(14)),
                                                    child: Center(
                                                      child: Text(
                                                       'No',style: TextStyle(
                                                        color: Color(0xFFAA6BE9),
                                                        fontSize: getFontSize(18),
                                                        fontWeight: FontWeight.w700,
                                                      ),

                                                        textAlign: TextAlign.center,

                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: getSize(20),
                                          ),
                                          Expanded(
                                            child: GestureDetector(
                                              onTap: ()  {
                                                Get.back();
                                              },
                                              child: Padding(
                                                padding: getPadding(right: getSize(30),bottom: getSize(20)),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(getSize(8)),
                                                    color: Color(0xFFAA6BE9),
                                                  ),
                                                  child: Padding(
                                                    padding:  getPadding(top: getSize(14),bottom: getSize(14)),
                                                    child: Center(
                                                      child: Text(
                                                        'Yes',style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: getFontSize(18),
                                                        fontWeight: FontWeight.w700,
                                                      ),

                                                        textAlign: TextAlign.center,

                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),

                                    ],
                                  ),
                                );
                              }
                            },
                          child: Container(
                            width: double.infinity,
                            alignment: Alignment.center,
                            child: Padding(
                              padding: getPadding(top: getSize(14)),
                              child: Text('Delete',style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: getFontSize(18),

                              ),),
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                );
              },
            );
          },
                child: Container(
                  child: CustomImageView(
                    svgPath: Assets.imagesImgOverflowmenu,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
