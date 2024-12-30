import 'package:musicapp/core/app_export.dart';import 'package:musicapp/presentation/my_libary_screen/models/my_libary_model.dart';/// A controller class for the MyLibaryScreen.
///
/// This class manages the state of the MyLibaryScreen, including the
/// current myLibaryModelObj
class MyLibaryController extends GetxController {Rx<MyLibaryModel> myLibaryModelObj = MyLibaryModel().obs;

 }
