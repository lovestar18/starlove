import '../../../core/app_export.dart';
import '../models/successful_password_reset_model.dart';

/// A controller class for the SuccessfulPasswordResetScreen.
///
/// This class manages the state of the SuccessfulPasswordResetScreen, including the
/// current successfulPasswordResetModelObj
class SuccessfulPasswordResetController extends GetxController {
  Rx<SuccessfulPasswordResetModel> successfulPasswordResetModelObj =
      SuccessfulPasswordResetModel().obs;
}
