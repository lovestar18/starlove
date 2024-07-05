import '../../../core/app_export.dart';
import '../models/feed_model.dart';

/// A controller class for the FeedScreen.
///
/// This class manages the state of the FeedScreen, including the
/// current feedModelObj
class FeedController extends GetxController {
  Rx<FeedModel> feedModelObj = FeedModel().obs;
}
