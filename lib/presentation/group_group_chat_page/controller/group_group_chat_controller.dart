import '../../../core/app_export.dart';
import '../models/group_group_chat_model.dart';

/// A controller class for the GroupGroupChatPage.
///
/// This class manages the state of the GroupGroupChatPage, including the
/// current groupGroupChatModelObj
class GroupGroupChatController extends GetxController {
  GroupGroupChatController(this.groupGroupChatModelObj);

  Rx<GroupGroupChatModel> groupGroupChatModelObj;

  @override
  void onReady() {
    Get.toNamed(
      AppRoutes.stickersScreen,
    );
  }
}
