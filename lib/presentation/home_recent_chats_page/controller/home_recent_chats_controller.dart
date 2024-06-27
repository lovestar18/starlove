import '../../../core/app_export.dart';
import '../models/home_recent_chats_model.dart';

/// A controller class for the HomeRecentChatsPage.
///
/// This class manages the state of the HomeRecentChatsPage, including the
/// current homeRecentChatsModelObj
class HomeRecentChatsController extends GetxController {
  HomeRecentChatsController(this.homeRecentChatsModelObj);

  Rx<HomeRecentChatsModel> homeRecentChatsModelObj;

  @override
  void onReady() {
    Get.toNamed(
      AppRoutes.sidebarScreen,
    );
  }
}
