import '../../../core/app_export.dart';
import '../models/home_recent_chats_model.dart';

/// A controller class for the HomeRecentChatsScreen.
///
/// This class manages the state of the HomeRecentChatsScreen, including the
/// current homeRecentChatsModelObj
class HomeRecentChatsController extends GetxController {
  Rx<HomeRecentChatsModel> homeRecentChatsModelObj = HomeRecentChatsModel().obs;

  @override
  void onReady() {
    Get.toNamed(
      AppRoutes.groupChatScreen,
    );
    Get.toNamed(
      AppRoutes.groupChatScreen,
    );
    Get.toNamed(
      AppRoutes.addToChatScreen,
    );
    Get.toNamed(
      AppRoutes.chatScreen,
    );
  }
}
