import 'package:get/get.dart';import 'review_one_item_model.dart';/// This class defines the variables used in the [review_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ReviewOneModel {Rx<List<ReviewOneItemModel>> reviewOneItemList = Rx(List.generate(4,(index) => ReviewOneItemModel()));

 }
