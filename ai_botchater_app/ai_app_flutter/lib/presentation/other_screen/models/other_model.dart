import 'package:get/get.dart';import 'other_item_model.dart';/// This class defines the variables used in the [other_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class OtherModel {Rx<List<OtherItemModel>> otherItemList = Rx(List.generate(4,(index) => OtherItemModel()));

 }
