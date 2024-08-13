import '../../../core/app_export.dart';
import '../controller/feed_tab_container_controller.dart';

/// A binding class for the FeedTabContainerScreen.
///
/// This class ensures that the FeedTabContainerController is created when the
/// FeedTabContainerScreen is first loaded.
class FeedTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FeedTabContainerController());
  }
}
