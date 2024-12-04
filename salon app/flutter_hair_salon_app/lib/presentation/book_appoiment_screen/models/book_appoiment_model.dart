import 'package:get/get.dart';import 'bookappoiment_item_model.dart';/// This class defines the variables used in the [book_appoiment_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class BookAppoimentModel {Rx<List<BookappoimentItemModel>> bookappoimentItemList = Rx(List.generate(3,(index) => BookappoimentItemModel()));

 }
