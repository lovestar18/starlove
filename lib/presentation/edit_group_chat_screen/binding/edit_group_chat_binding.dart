import '../../../core/app_export.dart';
import '../controller/edit_group_chat_controller.dart';

/// A binding class for the EditGroupChatScreen.
///
/// This class ensures that the EditGroupChatController is created when the
/// EditGroupChatScreen is first loaded.
class EditGroupChatBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EditGroupChatController());
  }
}
