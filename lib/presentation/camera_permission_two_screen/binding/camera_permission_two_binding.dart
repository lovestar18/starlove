import '../../../core/app_export.dart';
import '../controller/camera_permission_two_controller.dart';

/// A binding class for the CameraPermissionTwoScreen.
///
/// This class ensures that the CameraPermissionTwoController is created when the
/// CameraPermissionTwoScreen is first loaded.
class CameraPermissionTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CameraPermissionTwoController());
  }
}
