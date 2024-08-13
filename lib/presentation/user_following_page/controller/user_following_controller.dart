import '../../../core/app_export.dart';
import '../models/user_following_model.dart';

/// A controller class for the UserFollowingPage.
///
/// This class manages the state of the UserFollowingPage, including the
/// current userFollowingModelObj
class UserFollowingController extends GetxController {
  UserFollowingController(this.userFollowingModelObj);

  Rx<UserFollowingModel> userFollowingModelObj;
}
