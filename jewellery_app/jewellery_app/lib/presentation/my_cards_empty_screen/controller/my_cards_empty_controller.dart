import 'package:jewellery_app/core/app_export.dart';
import 'package:jewellery_app/presentation/my_cards_empty_screen/models/my_cards_empty_model.dart';

/// A controller class for the MyCardsEmptyScreen.
///
/// This class manages the state of the MyCardsEmptyScreen, including the
/// current myCardsEmptyModelObj
class MyCardsEmptyController extends GetxController {
  Rx<MyCardsEmptyModel> myCardsEmptyModelObj = MyCardsEmptyModel().obs;
}
