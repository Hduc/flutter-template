import 'package:get/get.dart';import 'gridrectangle_item_model.dart';/// This class defines the variables used in the [service_detail_two_container_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ServiceDetailTwoContainerModel {Rx<List<GridrectangleItemModel>> gridrectangleItemList = Rx(List.generate(8,(index) => GridrectangleItemModel()));

 }
