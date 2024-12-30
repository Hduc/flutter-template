import 'package:jewellery_app/core/app_export.dart';
import 'package:jewellery_app/presentation/delet_order_screen/models/delet_order_model.dart';

/// A controller class for the DeletOrderScreen.
///
/// This class manages the state of the DeletOrderScreen, including the
/// current deletOrderModelObj
class DeletOrderController extends GetxController {
  Rx<DeletOrderModel> deletOrderModelObj = DeletOrderModel().obs;
}
