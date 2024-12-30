import 'package:dating_app/core/app_export.dart';
import 'package:dating_app/presentation/address_edit_screen/models/address_edit_model.dart';

/// A controller class for the AddressEditScreen.
///
/// This class manages the state of the AddressEditScreen, including the
/// current addressEditModelObj
class AddressEditController extends GetxController {
  Rx<AddressEditModel> addressEditModelObj = AddressEditModel().obs;
}
