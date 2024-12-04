import 'package:dating_app/core/app_export.dart';
import 'package:dating_app/presentation/orientation_screen/models/orientation_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the OrientationScreen.
///
/// This class manages the state of the OrientationScreen, including the
/// current orientationModelObj
class OrientationController extends GetxController {
  TextEditingController selectuptothreeController = TextEditingController();

  TextEditingController oriantationController = TextEditingController();

  Rx<OrientationModel> orientationModelObj = OrientationModel().obs;

  List<OrientationModel> orientationType =[
    OrientationModel(
     orientation: 'Straight',
    ),
   OrientationModel(
    orientation: 'Gay',
   ),
   OrientationModel(
    orientation: 'Lesbian',
   ),
   OrientationModel(
    orientation: 'Bisexual',
   ),
   OrientationModel(
    orientation: 'Asexual',
   ),
   OrientationModel(
    orientation: 'Demisexual',
   ),
   OrientationModel(
    orientation: 'Pansexual ',
   ),
   OrientationModel(
    orientation: 'Bicurious',
   ),
   OrientationModel(
    orientation: 'Queer',
   ),
  ];


  RxInt sizeIndex = 0.obs;
  RxBool productPressed = false.obs;



  @override
  void onClose() {
    super.onClose();
    selectuptothreeController.dispose();


  }
  @override
  void onInit() {
    // TODO: implement onInit
    update();
    super.onInit();
  }
}
