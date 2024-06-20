import '../../../core/app_export.dart';
import '../controller/view_post_controller.dart';

/// A binding class for the ViewPostScreen.
///
/// This class ensures that the ViewPostController is created when the
/// ViewPostScreen is first loaded.
class ViewPostBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ViewPostController());
  }
}
