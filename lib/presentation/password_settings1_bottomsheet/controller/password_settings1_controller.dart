import '../../../core/app_export.dart';
import '../models/password_settings1_model.dart';

/// A controller class for the PasswordSettings1Bottomsheet.
///
/// This class manages the state of the PasswordSettings1Bottomsheet, including the
/// current passwordSettings1ModelObj
class PasswordSettings1Controller extends GetxController {
  Rx<PasswordSettings1Model> passwordSettings1ModelObj =
      PasswordSettings1Model().obs;
}
