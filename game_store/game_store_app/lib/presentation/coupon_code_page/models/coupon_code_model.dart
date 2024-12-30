import 'package:get/get.dart';import 'coupon_code_item_model.dart';/// This class defines the variables used in the [coupon_code_page],
/// and is typically used to hold data that is passed between different parts of the application.
class CouponCodeModel {Rx<List<CouponCodeItemModel>> couponCodeItemList = Rx(List.generate(3,(index) => CouponCodeItemModel()));

 }
