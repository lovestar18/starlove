import '../../../core/app_export.dart';
import '../models/view_post_model.dart';

/// A controller class for the ViewPostScreen.
///
/// This class manages the state of the ViewPostScreen, including the
/// current viewPostModelObj
class ViewPostController extends GetxController {
  Rx<ViewPostModel> viewPostModelObj = ViewPostModel().obs;
}
