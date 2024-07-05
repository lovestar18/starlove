import '../../../core/app_export.dart';
import '../controller/group_group_chat_controller.dart';

/// A binding class for the GroupGroupChatScreen.
///
/// This class ensures that the GroupGroupChatController is created when the
/// GroupGroupChatScreen is first loaded.
class GroupGroupChatBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GroupGroupChatController());
  }
}
