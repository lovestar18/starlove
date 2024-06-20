import '../../../core/app_export.dart';
import '../controller/create_group_chat_controller.dart';

/// A binding class for the CreateGroupChatScreen.
///
/// This class ensures that the CreateGroupChatController is created when the
/// CreateGroupChatScreen is first loaded.
class CreateGroupChatBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CreateGroupChatController());
  }
}
