import '../../../core/app_export.dart';
import '../controller/admin_dashboard_controller.dart';

/// A binding class for the AdminDashboardScreen.
///
/// This class ensures that the AdminDashboardController is created when the
/// AdminDashboardScreen is first loaded.
class AdminDashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AdminDashboardController());
  }
}
