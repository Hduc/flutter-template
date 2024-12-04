import 'package:get/get.dart';import 'reviewsone_item_model.dart';/// This class defines the variables used in the [reviews_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ReviewsOneModel {Rx<List<ReviewsoneItemModel>> reviewsoneItemList = Rx(List.generate(5,(index) => ReviewsoneItemModel()));

 }
