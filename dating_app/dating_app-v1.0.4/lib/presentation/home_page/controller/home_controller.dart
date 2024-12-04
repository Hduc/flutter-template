import 'package:carousel_slider/carousel_controller.dart';
import 'package:dating_app/core/app_export.dart';

import '../models/home_model.dart';


class HomeController extends GetxController {

  CarouselSliderController  carouselSliderController = CarouselSliderController();
  List<HomeModel> personList = [
    HomeModel(
      img: ImageConstant.person1,
      isNear: true,
      loc: 'New york, USA',
      name: 'Jenny wilson,24',
      near: '2.5 Km',
    ),
    HomeModel(
      img: ImageConstant.person2,
      isNear: false,
      loc: 'New york, USA',
      name: 'Brooklyn simmons,20',
      near: '2.5 Km',
    ),
    HomeModel(
      img: ImageConstant.person3,
      isNear: true,
      loc: 'New york, USA',
      name: 'Jenny wilson,22',
      near: '1.7 Km',
    ),
    HomeModel(
      img: ImageConstant.person4,
      isNear: false,
      loc: 'New york, USA',
      name: 'Jenny wilson,26',
      near: '2.5 Km',
    ),
    HomeModel(
      img: ImageConstant.person5,
      isNear: true,
      loc: 'New york, USA',
      name: 'Brooklyn simmons,23',
      near: '5.5 Km',
    ),
    HomeModel(
      img: ImageConstant.person6,
      isNear: true,
      loc: 'New york, USA',
      name: 'Jenny wilson,22',
      near: '2.0 Km',
    ),
    HomeModel(
      img: ImageConstant.person7,
      isNear: false,
      loc: 'New york, USA',
      name: 'Brooklyn simmons,24',
      near: '2.5 Km',
    ),
    HomeModel(
      img: ImageConstant.person8,
      isNear: false,
      loc: 'New york, USA',
      name: 'Jenny wilson,28',
      near: '2.5 Km',
    ),
    HomeModel(
      img: ImageConstant.person9,
      isNear: true,
      loc: 'New york, USA',
      name: 'Jenny wilson,25',
      near: '10.5 Km',
    ),

  ];

  int index = 0;
  int i =0;

  changeIndex(int value){
    index =value;
    update();
  }



  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

}
