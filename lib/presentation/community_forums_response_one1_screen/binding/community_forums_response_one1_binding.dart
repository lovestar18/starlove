import '../../../core/app_export.dart';
import '../controller/community_forums_response_one1_controller.dart';

/// A binding class for the CommunityForumsResponseOne1Screen.
///
/// This class ensures that the CommunityForumsResponseOne1Controller is created when the
/// CommunityForumsResponseOne1Screen is first loaded.
class CommunityForumsResponseOne1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CommunityForumsResponseOne1Controller());
  }
}
