import '../../../core/app_export.dart';
import '../controller/password_settings_controller.dart';

/// A binding class for the PasswordSettingsScreen.
///
/// This class ensures that the PasswordSettingsController is created when the
/// PasswordSettingsScreen is first loaded.
class PasswordSettingsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PasswordSettingsController());
  }
}
