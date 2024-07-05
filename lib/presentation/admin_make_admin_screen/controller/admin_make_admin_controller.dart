import '../../../core/app_export.dart';
import '../models/admin_make_admin_model.dart';

/// A controller class for the AdminMakeAdminScreen.
///
/// This class manages the state of the AdminMakeAdminScreen, including the
/// current adminMakeAdminModelObj
class AdminMakeAdminController extends GetxController {
  Rx<AdminMakeAdminModel> adminMakeAdminModelObj = AdminMakeAdminModel().obs;
}
