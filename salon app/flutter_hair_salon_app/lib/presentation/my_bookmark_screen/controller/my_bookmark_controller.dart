import 'package:hair_salon_app/core/app_export.dart';
import 'package:hair_salon_app/presentation/my_bookmark_screen/models/my_bookmark_model.dart';

class MyBookmarkController extends GetxController {
  Rx<MyBookmarkModel> myBookmarkModelObj = MyBookmarkModel().obs;

  RxList<String> nearCateList = ["All", "Haircut", "Make up", "Mani cure"].obs;

  RxInt nearIndex = 0.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
