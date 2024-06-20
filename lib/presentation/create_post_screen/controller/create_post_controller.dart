import '../../../core/app_export.dart';
import '../models/create_post_model.dart';

/// A controller class for the CreatePostScreen.
///
/// This class manages the state of the CreatePostScreen, including the
/// current createPostModelObj
class CreatePostController extends GetxController {
  Rx<CreatePostModel> createPostModelObj = CreatePostModel().obs;
}
