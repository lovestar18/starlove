import '../../../core/app_export.dart';
import '../controller/event_private_controller.dart';

/// A binding class for the EventPrivateScreen.
///
/// This class ensures that the EventPrivateController is created when the
/// EventPrivateScreen is first loaded.
class EventPrivateBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EventPrivateController());
  }
}
