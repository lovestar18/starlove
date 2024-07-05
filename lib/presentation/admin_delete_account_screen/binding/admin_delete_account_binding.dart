import '../../../core/app_export.dart';
import '../controller/admin_delete_account_controller.dart';

/// A binding class for the AdminDeleteAccountScreen.
///
/// This class ensures that the AdminDeleteAccountController is created when the
/// AdminDeleteAccountScreen is first loaded.
class AdminDeleteAccountBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AdminDeleteAccountController());
  }
}
