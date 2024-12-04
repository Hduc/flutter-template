import 'package:get/get.dart';
import 'writing_item_model.dart';

/// This class defines the variables used in the [writing_page],
/// and is typically used to hold data that is passed between different parts of the application.
class WritingModel {
  Rx<List<WritingItemModel>> writingItemList =
      Rx(List.generate(4, (index) => WritingItemModel()));
}
