import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/presentation/reviews_screen/models/reviews_model.dart';

class ReviewsController extends GetxController {
  // Rx<ReviewsModel> reviewsModelObj = ReviewsModel().obs;

  RxList<ReviewsModel> reviewList = [
    ReviewsModel("rev1.png", "Brooklyn Simmons"),
    ReviewsModel("rev2.png", "Brooklyn Simmons"),
    ReviewsModel("rev3.png", "Brooklyn Simmons"),
    ReviewsModel("rev4.png", "Brooklyn Simmons"),
    ReviewsModel("rev5.png", "Brooklyn Simmons"),
  ].obs;

  RxList<String> starList = ["All", "5.0", "4.8", "3.5", "5.0"].obs;

  RxInt selectedIndex = 0.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
