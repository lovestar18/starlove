import '../../../core/app_export.dart';
import '../controller/moderate_members_controller.dart';

/// A binding class for the ModerateMembersScreen.
///
/// This class ensures that the ModerateMembersController is created when the
/// ModerateMembersScreen is first loaded.
class ModerateMembersBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ModerateMembersController());
  }
}
