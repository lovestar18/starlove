import '../../../core/app_export.dart';
import '../controller/frame_1000003656_controller.dart';

/// A binding class for the Frame1000003656Screen.
///
/// This class ensures that the Frame1000003656Controller is created when the
/// Frame1000003656Screen is first loaded.
class Frame1000003656Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Frame1000003656Controller());
  }
}
