import '../../../core/app_export.dart';
import '../controller/frame_1000003628_controller.dart';

/// A binding class for the Frame1000003628Screen.
///
/// This class ensures that the Frame1000003628Controller is created when the
/// Frame1000003628Screen is first loaded.
class Frame1000003628Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Frame1000003628Controller());
  }
}
