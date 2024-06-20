import '../../../core/app_export.dart';
import '../controller/camera_permission_2_controller.dart';

/// A binding class for the CameraPermission2Screen.
///
/// This class ensures that the CameraPermission2Controller is created when the
/// CameraPermission2Screen is first loaded.
class CameraPermission2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CameraPermission2Controller());
  }
}
