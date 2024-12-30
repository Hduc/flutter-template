import 'package:get/get.dart';import 'listrectangle30_item_model.dart';/// This class defines the variables used in the [recomended_for_you_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class RecomendedForYouOneModel {Rx<List<Listrectangle30ItemModel>> listrectangle30ItemList = Rx(List.generate(6,(index) => Listrectangle30ItemModel()));

 }
