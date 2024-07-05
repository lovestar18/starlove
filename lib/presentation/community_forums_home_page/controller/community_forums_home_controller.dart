import '../../../core/app_export.dart';
import '../models/community_forums_home_model.dart';

/// A controller class for the CommunityForumsHomePage.
///
/// This class manages the state of the CommunityForumsHomePage, including the
/// current communityForumsHomeModelObj
class CommunityForumsHomeController extends GetxController {
  CommunityForumsHomeController(this.communityForumsHomeModelObj);

  Rx<CommunityForumsHomeModel> communityForumsHomeModelObj;

  @override
  void onReady() {
    Get.toNamed(
      AppRoutes.createNewGroupScreen,
    );
  }
}
