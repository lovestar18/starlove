import '../../../core/app_export.dart';
import '../controller/groupsdashboard_container_tab_container_controller.dart';

/// A binding class for the GroupsdashboardContainerTabContainerScreen.
///
/// This class ensures that the GroupsdashboardContainerTabContainerController is created when the
/// GroupsdashboardContainerTabContainerScreen is first loaded.
class GroupsdashboardContainerTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GroupsdashboardContainerTabContainerController());
  }
}
