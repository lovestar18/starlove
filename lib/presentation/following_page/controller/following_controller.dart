import '../../../core/app_export.dart';
import '../models/following_model.dart';

/// A controller class for the FollowingPage.
///
/// This class manages the state of the FollowingPage, including the
/// current followingModelObj
class FollowingController extends GetxController {
  FollowingController(this.followingModelObj);

  Rx<FollowingModel> followingModelObj;
}
