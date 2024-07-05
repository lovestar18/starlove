import '../../../core/app_export.dart';
import '../models/create_post_options_model.dart';

/// A controller class for the CreatePostOptionsScreen.
///
/// This class manages the state of the CreatePostOptionsScreen, including the
/// current createPostOptionsModelObj
class CreatePostOptionsController extends GetxController {
  Rx<CreatePostOptionsModel> createPostOptionsModelObj =
      CreatePostOptionsModel().obs;
}
