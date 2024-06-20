import '../../../core/app_export.dart';
import '../controller/login_version_2_controller.dart';

/// A binding class for the LoginVersion2Screen.
///
/// This class ensures that the LoginVersion2Controller is created when the
/// LoginVersion2Screen is first loaded.
class LoginVersion2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginVersion2Controller());
  }
}
