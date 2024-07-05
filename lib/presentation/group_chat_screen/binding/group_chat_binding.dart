import '../../../core/app_export.dart';
import '../controller/group_chat_controller.dart';

/// A binding class for the GroupChatScreen.
///
/// This class ensures that the GroupChatController is created when the
/// GroupChatScreen is first loaded.
class GroupChatBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GroupChatController());
  }
}
