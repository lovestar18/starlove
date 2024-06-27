import '../../../core/app_export.dart';
import '../controller/create_post_controller.dart';

/// A binding class for the CreatePostScreen.
///
/// This class ensures that the CreatePostController is created when the
/// CreatePostScreen is first loaded.
class CreatePostBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CreatePostController());
  }
}
