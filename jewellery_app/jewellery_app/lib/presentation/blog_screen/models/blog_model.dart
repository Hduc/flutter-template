import '../../../core/utils/image_constant.dart';
import 'blog_item_model.dart';

/// This class defines the variables used in the [blog_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class BlogModel {
  // Rx<List<BlogItemModel>> blogItemList =
  //     Rx(List.generate(5, (index) => BlogItemModel()));
  static List<BlogItemModel> getBlogData() {
    return [
      BlogItemModel(
          ImageConstant.imgBlog1st,
          "What is gold prices today?",
          "exploring different traditions and flavors from around the world.",
          "13 Sep, 2022",
          "10 Min Read"),
      BlogItemModel(
          ImageConstant.imgBlog2nd,
          "What is the cost gram gold?",
          "natural and organic baking has taken center stage.",
          "13 Sep, 2022",
          "15 Min Read"),
      BlogItemModel(
          ImageConstant.imgBlog3rd,
          "What future trend of gold?",
          "Bread, the universal staple, holds a special place in the hearts of many.",
          "13 Sep, 2022",
          "10 Min Read"),
      BlogItemModel(
          ImageConstant.imgBlog4th,
          "Gold expensive investment.",
          "Magical realm of bakeries the artistry behind their creations.",
          "13 Sep, 2022",
          "10 Min Read"),
      BlogItemModel(
          ImageConstant.imgBlog5th,
          "How many grams is gold?",
          "Plants are predominantly photosyn thetic eukaryotes of the kingdom.. ",
          "13 Sep, 2022",
          "10 Min Read"),
    ];
  }
}
