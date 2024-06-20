import '../../../core/app_export.dart';
import '../models/camera_permission_2_model.dart';

/// A controller class for the CameraPermission2Screen.
///
/// This class manages the state of the CameraPermission2Screen, including the
/// current cameraPermission2ModelObj
class CameraPermission2Controller extends GetxController {
  Rx<CameraPermission2Model> cameraPermission2ModelObj =
      CameraPermission2Model().obs;
}
