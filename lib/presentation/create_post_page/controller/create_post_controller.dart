import '../../../core/app_export.dart';
import '../models/create_post_model.dart';

/// A controller class for the CreatePostPage.
///
/// This class manages the state of the CreatePostPage, including the
/// current createPostModelObj
class CreatePostController extends GetxController {
  CreatePostController(this.createPostModelObj);

  Rx<CreatePostModel> createPostModelObj;
}
