import 'package:get/get.dart';import 'mybookmark_item_model.dart';/// This class defines the variables used in the [my_bookmark_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MyBookmarkModel {Rx<List<MybookmarkItemModel>> mybookmarkItemList = Rx(List.generate(8,(index) => MybookmarkItemModel()));

 }
