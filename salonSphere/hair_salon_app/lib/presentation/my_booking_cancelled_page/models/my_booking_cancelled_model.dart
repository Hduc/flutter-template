import 'package:get/get.dart';
import '../../../core/utils/image_constant.dart';
import 'listrectanglesi_item_model.dart';

/// This class defines the variables used in the [my_booking_cancelled_page],
/// and is typically used to hold data that is passed between different parts of the application.
class MyBookingCancelledModel {
  RxList<ListrectanglesiItemModel> listrectanglesiItemList = [
    ListrectanglesiItemModel(ImageConstant.imgRectangle643.obs),
    ListrectanglesiItemModel('assets/images/cancel.png'.obs),
  ].obs;
}
