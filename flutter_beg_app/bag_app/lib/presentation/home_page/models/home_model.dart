import 'package:bag_app/presentation/home_page/models/slidercar_item_model.dart';

import '../../../core/utils/image_constant.dart';
import 'discount_item_slider_model.dart';

/// This class defines the variables used in the [home_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeModel {


//// CarouselSlider  banner data
  static List<SlidercarItemModel> slidercarItemList(){
   return [
    SlidercarItemModel(ImageConstant.imgSlider1st,"50% Off On First Any Order"),
    SlidercarItemModel(ImageConstant.imgSlider2nd,"50% Off On First Any Order"),
    SlidercarItemModel(ImageConstant.imgSlider1st,"50% Off On First Any Order"),
   ];
  }
/////Discount Carousel Slider section
  static List<DiscountItemModel> getDiscountData(){
    return [
      DiscountItemModel(ImageConstant.imgDiscountSlider1st,"SWEETAN","25% off on stylish and trendy bags."),
      DiscountItemModel(ImageConstant.imgDiscountSlider2nd,"BUNDLE30.","30% off when you buy two or more bags."),
      DiscountItemModel(ImageConstant.imgDiscountSlider3rd,"FASHION25","25% off on stylish and trendy bags."),
    ];
  }
}
