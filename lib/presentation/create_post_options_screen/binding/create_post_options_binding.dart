import '../../../core/app_export.dart';
import '../controller/create_post_options_controller.dart';

/// A binding class for the CreatePostOptionsScreen.
///
/// This class ensures that the CreatePostOptionsController is created when the
/// CreatePostOptionsScreen is first loaded.
class CreatePostOptionsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CreatePostOptionsController());
  }
}
