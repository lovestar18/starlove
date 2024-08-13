import '../../../core/app_export.dart';
import '../controller/delete_post_controller.dart';

/// A binding class for the DeletePostScreen.
///
/// This class ensures that the DeletePostController is created when the
/// DeletePostScreen is first loaded.
class DeletePostBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DeletePostController());
  }
}
