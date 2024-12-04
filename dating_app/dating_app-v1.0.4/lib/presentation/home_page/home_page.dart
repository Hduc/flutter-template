import 'package:carousel_slider/carousel_slider.dart';
import 'package:dating_app/presentation/likes_list_page/controller/likes_list_controller.dart';
import 'controller/home_controller.dart';
import 'package:dating_app/core/app_export.dart';
import 'package:flutter/material.dart';

import 'models/home_model.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  HomeController controller = Get.put(HomeController());
  CarouselSliderController ? carouselController;

  LikesListController likesListController = Get.put(LikesListController());

  @override
  void initState() {
    // TODO: implement initState
    carouselController = CarouselSliderController();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  GetBuilder<HomeController>(builder: (controller) {
      return CarouselSlider.builder(
        carouselController: carouselController,
        itemCount: controller.personList.length,
        itemBuilder: (context, index, realIndex) {
          HomeModel data = likesListController.getfavData[index];
          return GestureDetector(
            onTap: () {
              print("data is ============  ${data.isNear}");
              likesListController.passData(data);
              Get.toNamed(AppRoutes.detailsScreen);
            },
            child: Padding(
              padding:  getPadding(left: getSize(6),right: getSize(6)),
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
                      imagePath:controller.personList[index].img,
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
                                    height:getSize(2.5),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),

                            controller.personList[index].isNear!?Container(

                              decoration: BoxDecoration(
                                color: Color(0x33F8F8F8),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Padding(
                                padding: getPadding(left: getSize(7.71),right: getSize(8),top: getSize(6),bottom: getSize(5)),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CustomImageView(

                                      svgPath: ImageConstant.imgRewind,
                                    ),
                                    Padding(
                                      padding:getPadding(left: getSize(5)),
                                      child: Text(controller.personList[index].near??"lbl_2_5_km",style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                      ),textAlign: TextAlign.left,),
                                    )
                                  ],
                                ),
                              ),
                            ):SizedBox(),
                            Padding(
                              padding: getPadding(
                                top: getSize(8),
                              ),
                              child: Text(
                                controller.personList[index].name??"msg_jenny_wilson_24".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: CustomTextStyles
                                    .titleLargeWhiteA700,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                  top: getSize(8.4)
                              ),
                              child: Text(
                                controller.personList[index].loc??"lbl_new_york_usa".tr,
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
                                      child: GetBuilder<HomeController>(builder: (controller) {
                                        return GestureDetector(
                                          onTap: () {
                                            if(controller.index ==
                                                controller.personList.length - 1) {
                                              debugPrint('Last page  ======> ${controller.personList.length}');
                                            }
                                            else{
                                              carouselController!.nextPage(
                                                  duration: const Duration(milliseconds: 100),
                                                  curve: Curves.bounceIn);
                                            }
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
                                              height: getSize(41),

                                              padding: getPadding(
                                                top: getSize(9),
                                                bottom:getSize(9),
                                              ),
                                              decoration:
                                              AppDecoration.white.copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder12,
                                              ),
                                              child: CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgArrowrightBlack900,
                                                height: getSize(22),
                                                width: getSize(22),
                                                alignment: Alignment.center,
                                              ),
                                            ),
                                          ),
                                        );

                                      },init: HomeController(),)
                                  ),
                                  SizedBox(
                                    width:getSize(10),
                                  ),
                                  Expanded(
                                    child: Card(
                                      clipBehavior: Clip.antiAlias,
                                      elevation: 0,
                                      margin: EdgeInsets.all(0),
                                      color: Color(0xFFAA6BE9),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadiusStyle
                                            .roundedBorder12,
                                      ),
                                      child: Container(
                                        height: getSize(41),

                                        padding: getPadding(
                                          top: getSize(9),
                                          bottom:getSize(9),
                                        ),
                                        decoration:
                                        AppDecoration.white.copyWith(
                                          color: Color(0xFFAA6BE9),
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder12,
                                        ),
                                        child: CustomImageView(
                                          svgPath: ImageConstant
                                              .imgIcheart,
                                          height:getSize(22),
                                          width: getSize(22),
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
            ),
          );

        }, options: CarouselOptions(

        enableInfiniteScroll: false,
        initialPage: 0,
        height: double.infinity,
        viewportFraction: 0.9,
        onPageChanged: (index, reason) {
          controller.changeIndex(index);
        },
      ),
      );
    },init: HomeController(),);
  }
}
