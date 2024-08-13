import '../../../core/app_export.dart';
import '../controller/password_settings_one_controller.dart';

/// A binding class for the PasswordSettingsOneScreen.
///
/// This class ensures that the PasswordSettingsOneController is created when the
/// PasswordSettingsOneScreen is first loaded.
class PasswordSettingsOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PasswordSettingsOneController());
  }
}
