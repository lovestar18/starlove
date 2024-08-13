import '../../../core/app_export.dart';
import '../models/friends_model.dart';

/// A controller class for the FriendsPage.
///
/// This class manages the state of the FriendsPage, including the
/// current friendsModelObj
class FriendsController extends GetxController {
  FriendsController(this.friendsModelObj);

  Rx<FriendsModel> friendsModelObj;
}
