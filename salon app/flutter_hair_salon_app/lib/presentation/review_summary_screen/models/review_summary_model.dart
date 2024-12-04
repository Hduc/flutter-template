import 'package:get/get.dart';import 'reviewsummary_item_model.dart';/// This class defines the variables used in the [review_summary_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ReviewSummaryModel {Rx<List<ReviewsummaryItemModel>> reviewsummaryItemList = Rx(List.generate(2,(index) => ReviewsummaryItemModel()));

 }
