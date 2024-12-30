import 'package:get/get.dart';import 'intrestedin_item_model.dart';import 'intrest_item_model.dart';import 'sunsigns_item_model.dart';/// This class defines the variables used in the [filter_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class FilterModel {Rx<List<IntrestedinItemModel>> intrestedinItemList = Rx(List.generate(2,(index) =>IntrestedinItemModel()));

Rx<List<IntrestItemModel>> intrestItemList = Rx(List.generate(12,(index) =>IntrestItemModel()));

Rx<List<SunsignsItemModel>> sunsignsItemList = Rx(List.generate(8,(index) =>SunsignsItemModel()));

 }
