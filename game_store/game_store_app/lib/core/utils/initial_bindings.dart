import 'package:game_store_app/core/app_export.dart';
import 'package:game_store_app/data/apiClient/api_client.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(PrefUtils());
    Get.put(ApiClient());
  }
}
