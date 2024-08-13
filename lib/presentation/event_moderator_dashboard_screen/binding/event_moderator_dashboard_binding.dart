import '../../../core/app_export.dart';
import '../controller/event_moderator_dashboard_controller.dart';

/// A binding class for the EventModeratorDashboardScreen.
///
/// This class ensures that the EventModeratorDashboardController is created when the
/// EventModeratorDashboardScreen is first loaded.
class EventModeratorDashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EventModeratorDashboardController());
  }
}
