import 'package:get/get.dart';import 'bookappoiment2_item_model.dart';/// This class defines the variables used in the [book_appoiment_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class BookAppoimentOneModel {Rx<List<Bookappoiment2ItemModel>> bookappoiment2ItemList = Rx(List.generate(3,(index) => Bookappoiment2ItemModel()));

 }
