import '../../../core/app_export.dart';
import '../models/profile_unfolllow_model.dart';

/// A controller class for the ProfileUnfolllowBottomsheet.
///
/// This class manages the state of the ProfileUnfolllowBottomsheet, including the
/// current profileUnfolllowModelObj
class ProfileUnfolllowController extends GetxController {
  Rx<ProfileUnfolllowModel> profileUnfolllowModelObj =
      ProfileUnfolllowModel().obs;

  @override
  void onReady() {}
}
