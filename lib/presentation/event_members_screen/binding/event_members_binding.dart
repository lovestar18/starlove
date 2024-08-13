import '../../../core/app_export.dart';
import '../controller/event_members_controller.dart';

/// A binding class for the EventMembersScreen.
///
/// This class ensures that the EventMembersController is created when the
/// EventMembersScreen is first loaded.
class EventMembersBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EventMembersController());
  }
}
