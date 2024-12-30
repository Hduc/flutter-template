import 'package:bag_app/core/app_export.dart';import 'package:bag_app/presentation/my_address_empty_screen/models/my_address_empty_model.dart';/// A controller class for the MyAddressEmptyScreen.
///
/// This class manages the state of the MyAddressEmptyScreen, including the
/// current myAddressEmptyModelObj
class MyAddressEmptyController extends GetxController {Rx<MyAddressEmptyModel> myAddressEmptyModelObj = MyAddressEmptyModel().obs;

 }
