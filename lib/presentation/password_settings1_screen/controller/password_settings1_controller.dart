import '../../../core/app_export.dart';
import '../models/password_settings1_model.dart';

/// A controller class for the PasswordSettings1Screen.
///
/// This class manages the state of the PasswordSettings1Screen, including the
/// current passwordSettings1ModelObj
class PasswordSettings1Controller extends GetxController {
  Rx<PasswordSettings1Model> passwordSettings1ModelObj =
      PasswordSettings1Model().obs;
}
