
import '../../../core/utils/image_constant.dart';
import 'blog_item_model.dart';

/// This class defines the variables used in the [blog_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class BlogModel {
  // Rx<List<BlogItemModel>> blogItemList =
  //     Rx(List.generate(5, (index) => BlogItemModel()));
 static List<BlogItemModel> getBlogData(){
  return [
   BlogItemModel(ImageConstant.imgBlog1st,"Backpacks for every fashionista","backpacks have become fashion statement, combining functionality with style.","13 Sep, 2022","10 Min Read"),
   BlogItemModel(ImageConstant.imgBlog2nd,"Utility to trendy accessories","Backpacks have come a long way from being simple utility bags.","13 Sep, 2022","15 Min Read"),
   BlogItemModel(ImageConstant.imgBlog3rd,"Backpack for your outdoor","the right backpack can make a world of difference.","13 Sep, 2022","10 Min Read"),
   BlogItemModel(ImageConstant.imgBlog4th,"Choosing the perfect backpack","Choosing the right backpack is crucial for comfort, organization, and style.","13 Sep, 2022","10 Min Read"),
   BlogItemModel(ImageConstant.imgBlog5th,"Features in a travel backpack","Explore the essential features to look for in a travel backpack.","13 Sep, 2022","10 Min Read"),
  ];
 }
}
