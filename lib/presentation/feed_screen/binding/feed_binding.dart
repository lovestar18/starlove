import '../../../core/app_export.dart';
import '../controller/feed_controller.dart';

/// A binding class for the FeedScreen.
///
/// This class ensures that the FeedController is created when the
/// FeedScreen is first loaded.
class FeedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FeedController());
  }
}
