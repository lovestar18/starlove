import '../../../core/app_export.dart';
import '../controller/community_forums_response1_controller.dart';

/// A binding class for the CommunityForumsResponse1Screen.
///
/// This class ensures that the CommunityForumsResponse1Controller is created when the
/// CommunityForumsResponse1Screen is first loaded.
class CommunityForumsResponse1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CommunityForumsResponse1Controller());
  }
}
