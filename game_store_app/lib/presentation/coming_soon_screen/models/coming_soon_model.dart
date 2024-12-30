import 'package:get/get.dart';import 'coming_soon_item_model.dart';/// This class defines the variables used in the [coming_soon_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ComingSoonModel {Rx<List<ComingSoonItemModel>> comingSoonItemList = Rx(List.generate(9,(index) => ComingSoonItemModel()));

 }
