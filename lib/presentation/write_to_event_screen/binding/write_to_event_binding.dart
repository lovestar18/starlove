import '../../../core/app_export.dart';
import '../controller/write_to_event_controller.dart';

/// A binding class for the WriteToEventScreen.
///
/// This class ensures that the WriteToEventController is created when the
/// WriteToEventScreen is first loaded.
class WriteToEventBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WriteToEventController());
  }
}
