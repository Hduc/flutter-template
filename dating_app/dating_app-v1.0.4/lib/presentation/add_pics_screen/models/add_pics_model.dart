import 'package:get/get.dart';import 'add_pics_item_model.dart';/// This class defines the variables used in the [add_pics_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AddPicsModel {Rx<List<AddPicsItemModel>> addPicsItemList = Rx(List.generate(6,(index) => AddPicsItemModel()));

 }
