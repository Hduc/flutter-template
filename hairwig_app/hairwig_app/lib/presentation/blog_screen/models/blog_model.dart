
import '../../../core/utils/image_constant.dart';
import 'blog_item_model.dart';

/// This class defines the variables used in the [blog_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class BlogModel {
  // Rx<List<BlogItemModel>> blogItemList =
  //     Rx(List.generate(5, (index) => BlogItemModel()));
 static List<BlogItemModel> getBlogData(){
  return [
   BlogItemModel(ImageConstant.imgBlog1st,"How to make hair strong?","Closures and frontals are a  way to  your kink....","20 Sep, 2022","20 Min Read"),
   BlogItemModel(ImageConstant.imgBlog2nd,"What is the hair definition?","Neque porro quisquam est, qui dolorem ipsum quia dolo","13 Sep, 2022","10 Min Read"),
   BlogItemModel(ImageConstant.imgBlog3rd,"What main purpose to hair?","Aliquam pulvinar vestibulum blandit. Donec sed nisl libero. ","4 Nov, 2022","10 Min Read"),
   BlogItemModel(ImageConstant.imgBlog4th,"Wonderful World of Bakeries","Magical realm of bakeries the artistry behind their creations.","13 Sep, 2022","10 Min Read"),
   BlogItemModel(ImageConstant.imgBlog5th,"Closures&Finis Your Look..","Aliquam porta nisl dolor, molestie pellentesque elit...","13 Sep, 2022","10 Min Read"),
  ];
 }
}
