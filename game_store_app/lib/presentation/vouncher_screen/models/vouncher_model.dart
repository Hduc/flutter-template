import 'package:get/get.dart';import 'vouncher_item_model.dart';/// This class defines the variables used in the [vouncher_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class VouncherModel {Rx<List<VouncherItemModel>> vouncherItemList = Rx(List.generate(2,(index) => VouncherItemModel()));

 }
