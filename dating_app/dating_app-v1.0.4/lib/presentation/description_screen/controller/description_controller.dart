import 'package:dating_app/core/app_export.dart';import 'package:dating_app/presentation/description_screen/models/description_model.dart';import 'package:flutter/material.dart';/// A controller class for the DescriptionScreen.
///
/// This class manages the state of the DescriptionScreen, including the
/// current descriptionModelObj
class DescriptionController extends GetxController {TextEditingController descriptionController = TextEditingController();

Rx<DescriptionModel> descriptionModelObj = DescriptionModel().obs;

@override void onClose() { super.onClose(); descriptionController.dispose(); } 
 }
