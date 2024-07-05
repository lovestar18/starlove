import '../../../core/app_export.dart';
import '../controller/community_forums_response_controller.dart';

/// A binding class for the CommunityForumsResponseScreen.
///
/// This class ensures that the CommunityForumsResponseController is created when the
/// CommunityForumsResponseScreen is first loaded.
class CommunityForumsResponseBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CommunityForumsResponseController());
  }
}
