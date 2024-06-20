import '../../../core/app_export.dart';
import '../controller/password_reset_controller.dart';

/// A binding class for the PasswordResetScreen.
///
/// This class ensures that the PasswordResetController is created when the
/// PasswordResetScreen is first loaded.
class PasswordResetBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PasswordResetController());
  }
}
