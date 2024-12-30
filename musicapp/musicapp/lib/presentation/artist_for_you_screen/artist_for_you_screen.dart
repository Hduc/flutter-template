import 'package:flutter/material.dart';
import 'package:musicapp/core/app_export.dart';
import 'package:musicapp/widgets/app_bar/appbar_image.dart';
import 'package:musicapp/widgets/app_bar/appbar_title.dart';
import '../artist_for_you_screen/widgets/artist_for_you_item_widget.dart';
import '../home_screen_page/controller/home_screen_controller.dart';
import '../home_screen_page/models/list18271_item_model.dart';
import 'controller/artist_for_you_controller.dart';

class ArtistForYouScreen extends StatefulWidget {
  const ArtistForYouScreen({super.key});

  @override
  State<ArtistForYouScreen> createState() => _ArtistForYouScreenState();
}

class _ArtistForYouScreenState extends State<ArtistForYouScreen> {
 ArtistForYouController artistForYouController = Get.put(ArtistForYouController());
 HomeScreenController controller = Get.put(HomeScreenController());

 @override
 void initState() {
  setSafeAreaColor();
   super.initState();
 }


 @override
 Widget build(BuildContext context) {
  return WillPopScope(
      onWillPop: () async {
   Get.back();
    return true;
  },
   child: Scaffold(
          backgroundColor: appTheme.bgColor,
          body: Column(
            children: [
              SizedBox(height: getVerticalSize(35),),
              Container(
                  color: appTheme.bgColor,
                  child:
                  Padding(
                    padding:getPadding(left: 20,right: 20,top: 25,bottom: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppbarImage(
                            height: getSize(24),
                            width: getSize(24),
                            svgPath:PrefUtils().getThemeData() == "primary"?ImageConstant.imgArrowleft:ImageConstant.imgArrowleftWhite,

                            onTap: () {
                              onTapArrowleft5();
                            }),
                        AppbarTitle(text: "lbl_artist_for_you".tr),
                        SizedBox()
                      ],
                    ),
                  )


              ),
              Expanded(
                child: ListView(
                  children: [
                    Padding(
                        padding: getPadding(left: 20, top: 16, right: 19),
                        child: GridView.builder(
                            shrinkWrap: true,
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                mainAxisExtent: getVerticalSize(171),
                                crossAxisCount: 3,
                                mainAxisSpacing: getHorizontalSize(16),
                                crossAxisSpacing: getHorizontalSize(16)),
                            physics: BouncingScrollPhysics(),
                            itemCount:controller.artistData.length,
                            itemBuilder: (context, index) {
                              Artist model = controller.artistData[index];
                              return ArtistForYouItemWidget(model);
                            }))
                  ],
                ),
              ),
            ],
          ),












         ));
 }


 onTapArrowleft5() {
  Get.back();
 }
}



