import '../../../core/app_export.dart';
import '../controller/write_wall_post_controller.dart';

/// A binding class for the WriteWallPostScreen.
///
/// This class ensures that the WriteWallPostController is created when the
/// WriteWallPostScreen is first loaded.
class WriteWallPostBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WriteWallPostController());
  }
}
