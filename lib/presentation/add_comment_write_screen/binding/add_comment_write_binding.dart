import '../../../core/app_export.dart';
import '../controller/add_comment_write_controller.dart';

/// A binding class for the AddCommentWriteScreen.
///
/// This class ensures that the AddCommentWriteController is created when the
/// AddCommentWriteScreen is first loaded.
class AddCommentWriteBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddCommentWriteController());
  }
}
