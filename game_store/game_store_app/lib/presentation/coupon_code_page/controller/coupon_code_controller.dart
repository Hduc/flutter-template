import 'package:game_store_app/core/app_export.dart';
import 'package:game_store_app/presentation/coupon_code_page/models/coupon_code_model.dart';

class CouponCodeController extends GetxController {
  CouponCodeController(this.couponCodeModelObj);

  Rx<CouponCodeModel> couponCodeModelObj;
  bool isCouponNavOfPayment = false;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void isCouponScreenNavigateOfPayDetail(bool val) {
    isCouponNavOfPayment = val;
    update();
  }
}
