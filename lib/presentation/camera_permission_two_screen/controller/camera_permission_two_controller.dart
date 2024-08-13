import '../../../core/app_export.dart';
import '../models/camera_permission_two_model.dart';

/// A controller class for the CameraPermissionTwoScreen.
///
/// This class manages the state of the CameraPermissionTwoScreen, including the
/// current cameraPermissionTwoModelObj
class CameraPermissionTwoController extends GetxController {
  Rx<CameraPermissionTwoModel> cameraPermissionTwoModelObj =
      CameraPermissionTwoModel().obs;
}
