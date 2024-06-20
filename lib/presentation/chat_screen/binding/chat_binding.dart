import '../../../core/app_export.dart';
import '../controller/chat_controller.dart';

/// A binding class for the ChatScreen.
///
/// This class ensures that the ChatController is created when the
/// ChatScreen is first loaded.
class ChatBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ChatController());
  }
}
