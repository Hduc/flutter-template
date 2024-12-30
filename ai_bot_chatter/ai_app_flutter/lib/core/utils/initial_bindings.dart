import 'package:ai_app_flutter/core/app_export.dart';
import 'package:ai_app_flutter/data/apiClient/api_client.dart';

class InitialBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(PrefUtils());
    Get.put(ApiClient());
    // Connectivity connectivity = Connectivity();
    // Get.put(NetworkInfo(connectivity));
  }
}
