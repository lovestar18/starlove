import '../../../core/app_export.dart';
import '../models/feed_model.dart';

/// A controller class for the FeedPage.
///
/// This class manages the state of the FeedPage, including the
/// current feedModelObj
class FeedController extends GetxController {
  FeedController(this.feedModelObj);

  Rx<FeedModel> feedModelObj;
}
