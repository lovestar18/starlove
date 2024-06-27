import '../../../core/app_export.dart';
import '../controller/create_wall_post_controller.dart';

/// A binding class for the CreateWallPostScreen.
///
/// This class ensures that the CreateWallPostController is created when the
/// CreateWallPostScreen is first loaded.
class CreateWallPostBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CreateWallPostController());
  }
}
