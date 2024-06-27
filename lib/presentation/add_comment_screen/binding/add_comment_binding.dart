import '../../../core/app_export.dart';
import '../controller/add_comment_controller.dart';

/// A binding class for the AddCommentScreen.
///
/// This class ensures that the AddCommentController is created when the
/// AddCommentScreen is first loaded.
class AddCommentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddCommentController());
  }
}
