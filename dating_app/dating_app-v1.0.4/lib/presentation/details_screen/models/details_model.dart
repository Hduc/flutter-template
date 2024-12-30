import 'package:get/get.dart';import 'sliderarrowleft_item_model.dart';import 'intrest2_item_model.dart';import 'details_item_model.dart';/// This class defines the variables used in the [details_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class DetailsModel {Rx<List<SliderarrowleftItemModel>> sliderarrowleftItemList = Rx(List.generate(1,(index) => SliderarrowleftItemModel()));

Rx<List<Intrest2ItemModel>> intrest2ItemList = Rx(List.generate(8,(index) =>Intrest2ItemModel()));

Rx<List<DetailsItemModel>> detailsItemList = Rx(List.generate(6,(index) => DetailsItemModel()));

 }
