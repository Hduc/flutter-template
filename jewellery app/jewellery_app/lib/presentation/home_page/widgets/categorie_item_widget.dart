
import '../controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:jewellery_app/core/app_export.dart';

// ignore: must_be_immutable
class CategorieItemWidget extends StatelessWidget {
  CategorieItemWidget(
    this.categorieItemModelObj, {
    Key? key,
    this.onTapCategorie,
  }) : super(
          key: key,
        );

  MoterCyclePartsModel categorieItemModelObj;

  var controller = Get.find<HomeController>();

  VoidCallback? onTapCategorie;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onTapCategorie?.call();
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: getSize(102.55),
              width: getSize(102),
              decoration: AppDecoration.fillGray100.copyWith(
                shape: BoxShape.circle,
                color: Color(0xFFF4F4F4),
                // image: DecorationImage(image: AssetImage(categorieItemModelObj.image!),fit: BoxFit.fill)
                // borderRadius: BorderRadiusStyle.circleBorder40,
              ),
              child: Padding(
                padding: getPadding(top: 8, bottom: 6.02, left: 13, right: 13),
                child: CustomImageView(
                  imagePath: categorieItemModelObj.image,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            // SizedBox(
            //   height: getVerticalSize(15.98),
            // ),
            Text(
              categorieItemModelObj.title!,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: theme.textTheme.titleMedium,
            )
          ],
        ));
  }
}

class MoterCyclePartsModel {
  get image => null;

  get title => null;
}
