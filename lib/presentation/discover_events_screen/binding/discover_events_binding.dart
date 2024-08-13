import '../../../core/app_export.dart';
import '../controller/discover_events_controller.dart';

/// A binding class for the DiscoverEventsScreen.
///
/// This class ensures that the DiscoverEventsController is created when the
/// DiscoverEventsScreen is first loaded.
class DiscoverEventsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DiscoverEventsController());
  }
}
