import '../../../core/app_export.dart';
import 'userprofilelist_item_model.dart';

/// This class defines the variables used in the [feed_screen],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class FeedModel {
  Rx<List<UserprofilelistItemModel>> userprofilelistItemList = Rx([
    UserprofilelistItemModel(
        userimage1: ImageConstant.imgUnsplashBqe0j0b26rq.obs,
        userimage2: ImageConstant.imgHugeIcon.obs,
        you: "You".obs),
    UserprofilelistItemModel(you: "Benjamin".obs),
    UserprofilelistItemModel(you: "Marie".obs),
    UserprofilelistItemModel()
  ]);
}
