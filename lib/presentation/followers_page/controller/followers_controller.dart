import '../../../core/app_export.dart';
import '../models/followers_model.dart';

/// A controller class for the FollowersPage.
///
/// This class manages the state of the FollowersPage, including the
/// current followersModelObj
class FollowersController extends GetxController {
  FollowersController(this.followersModelObj);

  Rx<FollowersModel> followersModelObj;
}
