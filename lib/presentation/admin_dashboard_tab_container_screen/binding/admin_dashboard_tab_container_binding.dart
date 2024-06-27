import '../../../core/app_export.dart';
import '../controller/admin_dashboard_tab_container_controller.dart';

/// A binding class for the AdminDashboardTabContainerScreen.
///
/// This class ensures that the AdminDashboardTabContainerController is created when the
/// AdminDashboardTabContainerScreen is first loaded.
class AdminDashboardTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AdminDashboardTabContainerController());
  }
}
