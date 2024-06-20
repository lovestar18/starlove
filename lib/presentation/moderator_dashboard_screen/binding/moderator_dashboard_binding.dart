import '../../../core/app_export.dart';
import '../controller/moderator_dashboard_controller.dart';

/// A binding class for the ModeratorDashboardScreen.
///
/// This class ensures that the ModeratorDashboardController is created when the
/// ModeratorDashboardScreen is first loaded.
class ModeratorDashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ModeratorDashboardController());
  }
}
