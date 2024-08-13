import '../../../core/app_export.dart';
import '../controller/create_post_tab_container_controller.dart';

/// A binding class for the CreatePostTabContainerScreen.
///
/// This class ensures that the CreatePostTabContainerController is created when the
/// CreatePostTabContainerScreen is first loaded.
class CreatePostTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CreatePostTabContainerController());
  }
}
