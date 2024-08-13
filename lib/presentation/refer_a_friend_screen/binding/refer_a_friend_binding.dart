import '../../../core/app_export.dart';
import '../controller/refer_a_friend_controller.dart';

/// A binding class for the ReferAFriendScreen.
///
/// This class ensures that the ReferAFriendController is created when the
/// ReferAFriendScreen is first loaded.
class ReferAFriendBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ReferAFriendController());
  }
}
