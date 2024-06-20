import '../../../core/app_export.dart';
import '../models/delete_account_model.dart';

/// A controller class for the DeleteAccountScreen.
///
/// This class manages the state of the DeleteAccountScreen, including the
/// current deleteAccountModelObj
class DeleteAccountController extends GetxController {
  Rx<DeleteAccountModel> deleteAccountModelObj = DeleteAccountModel().obs;
}
