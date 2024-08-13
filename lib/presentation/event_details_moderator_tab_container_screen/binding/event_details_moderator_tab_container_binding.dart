import '../../../core/app_export.dart';
import '../controller/event_details_moderator_tab_container_controller.dart';

/// A binding class for the EventDetailsModeratorTabContainerScreen.
///
/// This class ensures that the EventDetailsModeratorTabContainerController is created when the
/// EventDetailsModeratorTabContainerScreen is first loaded.
class EventDetailsModeratorTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EventDetailsModeratorTabContainerController());
  }
}
