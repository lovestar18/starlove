import '../../../core/app_export.dart';
import '../controller/successful_password_reset_controller.dart';

/// A binding class for the SuccessfulPasswordResetScreen.
///
/// This class ensures that the SuccessfulPasswordResetController is created when the
/// SuccessfulPasswordResetScreen is first loaded.
class SuccessfulPasswordResetBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SuccessfulPasswordResetController());
  }
}
