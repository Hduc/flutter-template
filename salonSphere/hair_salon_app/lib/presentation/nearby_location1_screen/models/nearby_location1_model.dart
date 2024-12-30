import 'package:get/get.dart';import 'nearbylocation1_item_model.dart';/// This class defines the variables used in the [nearby_location1_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class NearbyLocation1Model {Rx<List<Nearbylocation1ItemModel>> nearbylocation1ItemList = Rx(List.generate(8,(index) => Nearbylocation1ItemModel()));

 }
