import 'package:get/get.dart';
import 'searchresult_item_model.dart';

/// This class defines the variables used in the [search_result_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchResultModel {
  RxList<SearchresultItemModel> searchresultItemList = [
    SearchresultItemModel("search1.png"),
    SearchresultItemModel("search2.png"),
    SearchresultItemModel("search1.png"),
    SearchresultItemModel("search4.png"),
    SearchresultItemModel("search2.png"),
    SearchresultItemModel("search6.png"),
    SearchresultItemModel("search2.png"),
    SearchresultItemModel("search1.png"),
  ].obs;
}
