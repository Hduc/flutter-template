import 'package:get/get.dart';import 'ereciept_item_model.dart';/// This class defines the variables used in the [e_reciept_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ERecieptModel {Rx<List<ErecieptItemModel>> erecieptItemList = Rx(List.generate(2,(index) => ErecieptItemModel()));

 }
