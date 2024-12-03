import '../../../core/app_export.dart';
import '../controller/password_settings1_controller.dart';

/// A binding class for the PasswordSettings1Screen.
///
/// This class ensures that the PasswordSettings1Controller is created when the
/// PasswordSettings1Screen is first loaded.
class PasswordSettings1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PasswordSettings1Controller());
  }
}
