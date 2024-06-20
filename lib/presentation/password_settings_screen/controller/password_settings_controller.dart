import '../../../core/app_export.dart';
import '../models/password_settings_model.dart';

/// A controller class for the PasswordSettingsScreen.
///
/// This class manages the state of the PasswordSettingsScreen, including the
/// current passwordSettingsModelObj
class PasswordSettingsController extends GetxController {
  Rx<PasswordSettingsModel> passwordSettingsModelObj =
      PasswordSettingsModel().obs;
}
