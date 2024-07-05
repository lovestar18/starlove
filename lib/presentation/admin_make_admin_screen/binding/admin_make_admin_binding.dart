import '../../../core/app_export.dart';
import '../controller/admin_make_admin_controller.dart';

/// A binding class for the AdminMakeAdminScreen.
///
/// This class ensures that the AdminMakeAdminController is created when the
/// AdminMakeAdminScreen is first loaded.
class AdminMakeAdminBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AdminMakeAdminController());
  }
}
