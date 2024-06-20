import '../../../core/app_export.dart';
import '../controller/write_wall_post_options_controller.dart';

/// A binding class for the WriteWallPostOptionsScreen.
///
/// This class ensures that the WriteWallPostOptionsController is created when the
/// WriteWallPostOptionsScreen is first loaded.
class WriteWallPostOptionsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WriteWallPostOptionsController());
  }
}
