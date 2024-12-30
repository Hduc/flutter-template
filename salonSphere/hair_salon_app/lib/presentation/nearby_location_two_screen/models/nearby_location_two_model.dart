import 'package:get/get.dart';import 'nearbylocation2_item_model.dart';/// This class defines the variables used in the [nearby_location_two_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class NearbyLocationTwoModel {Rx<List<Nearbylocation2ItemModel>> nearbylocation2ItemList = Rx(List.generate(8,(index) => Nearbylocation2ItemModel()));

 }
