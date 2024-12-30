import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../core/utils/image_constant.dart';
import '../../../core/utils/size_utils.dart';
import '../../../routes/app_routes.dart';
import '../../../theme/app_decoration.dart';
import '../../../theme/text_theme_helper.dart';
import '../../../theme/theme_helper.dart';
import '../../../widgets/custom_icon_button.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/list18271_item_model.dart';

// ignore: must_be_immutable
class RecommendedWidget extends StatefulWidget {
   RecommendedWidget({super.key,required this.model});
   RecommendedData model;
  @override
  State<RecommendedWidget> createState() => _RecommendedWidgetState();
}

class _RecommendedWidgetState extends State<RecommendedWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onTapJustforyou();
        },
        child: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: AppDecoration.fill2.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder16,
            ),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment:
                CrossAxisAlignment.start,
                mainAxisAlignment:
                MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: getPadding(all: 4),
                    child: Container(
                      height: getSize(214),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(getHorizontalSize(16)),
                          image: DecorationImage(
                              image: AssetImage(widget.model.image!),
                              fit: BoxFit.fill)),
                      child: CustomIconButton(
                        height: 32,
                        width: 32,
                        margin: getMargin(
                          top: 4,
                          right: 4,
                        ),
                        padding: getPadding(
                          all: 8,
                        ),
                        alignment: Alignment.topRight,
                        child: CustomImageView(
                          svgPath: ImageConstant.imgClock,
                        ),
                      ),
                    ),
                  ),


                  Padding(
                      padding:
                      getPadding(left: 8,right: 8, top: 8),
                      child: Text(
                          widget.model.title!,
                          overflow:
                          TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: TextThemeHelper
                              .titleMediumSemiBold)),
                  Padding(
                      padding: getPadding(
                          left: 8,right: 8, top: 4, bottom: 5),
                      child: Text(
                          widget.model.subtitle!,
                          overflow:
                          TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: theme
                              .textTheme.bodyMedium))
                ])));
  }

  onTapJustforyou() {
    Get.toNamed(
      AppRoutes.songsDetailScreen,
    );
  }
}
