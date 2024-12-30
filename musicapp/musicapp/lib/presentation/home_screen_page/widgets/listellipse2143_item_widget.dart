import '../controller/home_screen_controller.dart';
import '../models/list18271_item_model.dart';
import 'package:flutter/material.dart';
import 'package:musicapp/core/app_export.dart';

// ignore: must_be_immutable
class Listellipse2143ItemWidget extends StatelessWidget {
  Listellipse2143ItemWidget(
    this.listellipse2143ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Artist listellipse2143ItemModelObj;

  HomeScreenController controller = Get.put(HomeScreenController());



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(left: 8,right: 8),
      child: GestureDetector(
        onTap: (){
          Get.toNamed(AppRoutes.artistSongScreen);
        },
        child: Container(
          height: double.infinity,
          width: getSize(112),
          decoration: AppDecoration.fill2.copyWith(
            color: appTheme.containerColor,
            borderRadius: BorderRadiusStyle.roundedBorder16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: getPadding(top:16,left: 16,right: 16,bottom: 8),
                child: Container(
                  height: getSize(80),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(image: AssetImage(listellipse2143ItemModelObj.image!),fit: BoxFit.fill),
                  ),

                ),
              ),
              Text(
                listellipse2143ItemModelObj.name!,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: TextThemeHelper.titleMediumSemiBold,
              ),
              SizedBox(height: getVerticalSize(4),),
              Text(
                "${listellipse2143ItemModelObj.followers!} followes",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: theme.textTheme.bodyMedium,
              ),
            ],
          ),

        ),
      ),
    );

  }

}
onTapArtistforyou() {
  Get.toNamed(AppRoutes.artistSongScreen);
}
