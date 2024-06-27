import '../../../core/app_export.dart';
import '../models/delete_account_ii_model.dart';

/// A controller class for the DeleteAccountIiDialog.
///
/// This class manages the state of the DeleteAccountIiDialog, including the
/// current deleteAccountIiModelObj
class DeleteAccountIiController extends GetxController {
  Rx<DeleteAccountIiModel> deleteAccountIiModelObj = DeleteAccountIiModel().obs;
}
