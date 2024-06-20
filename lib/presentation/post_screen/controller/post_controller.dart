import '../../../core/app_export.dart';
import '../models/post_model.dart';

/// A controller class for the PostScreen.
///
/// This class manages the state of the PostScreen, including the
/// current postModelObj
class PostController extends GetxController {
  Rx<PostModel> postModelObj = PostModel().obs;
}
