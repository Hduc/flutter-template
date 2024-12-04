import 'package:get/get.dart';import 'creative_item_model.dart';/// This class defines the variables used in the [creative_page],
/// and is typically used to hold data that is passed between different parts of the application.
class CreativeModel {Rx<List<CreativeItemModel>> creativeItemList = Rx(List.generate(2,(index) => CreativeItemModel()));

 }
