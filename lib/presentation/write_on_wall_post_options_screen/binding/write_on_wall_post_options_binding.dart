import '../../../core/app_export.dart';
import '../controller/write_on_wall_post_options_controller.dart';

/// A binding class for the WriteOnWallPostOptionsScreen.
///
/// This class ensures that the WriteOnWallPostOptionsController is created when the
/// WriteOnWallPostOptionsScreen is first loaded.
class WriteOnWallPostOptionsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WriteOnWallPostOptionsController());
  }
}
