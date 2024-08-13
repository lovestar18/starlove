import '../../../core/app_export.dart';
import '../controller/frame_eighteen1_controller.dart';

/// A binding class for the FrameEighteen1Screen.
///
/// This class ensures that the FrameEighteen1Controller is created when the
/// FrameEighteen1Screen is first loaded.
class FrameEighteen1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FrameEighteen1Controller());
  }
}
