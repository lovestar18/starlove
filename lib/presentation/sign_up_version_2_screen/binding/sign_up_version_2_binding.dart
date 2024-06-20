import '../../../core/app_export.dart';
import '../controller/sign_up_version_2_controller.dart';

/// A binding class for the SignUpVersion2Screen.
///
/// This class ensures that the SignUpVersion2Controller is created when the
/// SignUpVersion2Screen is first loaded.
class SignUpVersion2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SignUpVersion2Controller());
  }
}
