import '../../../core/app_export.dart';
import '../models/admin_delete_account_model.dart';

/// A controller class for the AdminDeleteAccountScreen.
///
/// This class manages the state of the AdminDeleteAccountScreen, including the
/// current adminDeleteAccountModelObj
class AdminDeleteAccountController extends GetxController {
  Rx<AdminDeleteAccountModel> adminDeleteAccountModelObj =
      AdminDeleteAccountModel().obs;
}
