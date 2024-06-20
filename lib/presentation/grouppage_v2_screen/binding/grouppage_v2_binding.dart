import '../../../core/app_export.dart';
import '../controller/grouppage_v2_controller.dart';

/// A binding class for the GrouppageV2Screen.
///
/// This class ensures that the GrouppageV2Controller is created when the
/// GrouppageV2Screen is first loaded.
class GrouppageV2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GrouppageV2Controller());
  }
}
