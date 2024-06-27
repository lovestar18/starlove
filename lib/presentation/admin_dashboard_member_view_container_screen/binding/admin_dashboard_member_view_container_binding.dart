import '../../../core/app_export.dart';
import '../controller/admin_dashboard_member_view_container_controller.dart';

/// A binding class for the AdminDashboardMemberViewContainerScreen.
///
/// This class ensures that the AdminDashboardMemberViewContainerController is created when the
/// AdminDashboardMemberViewContainerScreen is first loaded.
class AdminDashboardMemberViewContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AdminDashboardMemberViewContainerController());
  }
}
