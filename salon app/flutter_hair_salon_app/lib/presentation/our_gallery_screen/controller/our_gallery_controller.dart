import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/presentation/our_gallery_screen/models/our_gallery_model.dart';

class OurGalleryController extends GetxController {
  Rx<OurGalleryModel> ourGalleryModelObj = OurGalleryModel().obs;

  RxList<String> imageList = [
    "gallary1.png",
    "gallary2.png",
    "gallary3.png",
    "gallary4.png",
    "gallary5.png",
    "gallary6.png",
    "gallary7.png",
    "gallary8.png",
    "gallary9.png",
    "gallary10.png",
    "gallary5.png",
    "gallary6.png",
    "gallary11.png",
    "gallary8.png",
    "gallary12.png",
    "gallary7.png",
    "gallary3.png",
    "gallary6.png",
    "gallary8.png",
    "gallary10.png",
    "gallary1.png",
    "gallary13.png",
    "gallary2.png",
    "gallary4.png",
    "gallary3.png",
    "gallary6.png",
    "gallary5.png",
    "gallary1.png",
  ].obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
