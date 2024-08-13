import '../../../core/app_export.dart';
import '../controller/event_details_public_controller.dart';

/// A binding class for the EventDetailsPublicScreen.
///
/// This class ensures that the EventDetailsPublicController is created when the
/// EventDetailsPublicScreen is first loaded.
class EventDetailsPublicBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EventDetailsPublicController());
  }
}
