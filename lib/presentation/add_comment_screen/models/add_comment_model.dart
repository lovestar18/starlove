import '../../../core/app_export.dart';
import 'userprofilelist_item_model.dart';

/// This class defines the variables used in the [add_comment_screen],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class AddCommentModel {
  Rx<List<UserprofilelistItemModel>> userprofilelistItemList = Rx([
    UserprofilelistItemModel(
        username: "Bruno Pham".obs,
        caption: "Great shot! I love it".obs,
        time: "2 mins ago".obs,
        minutes: "02".obs,
        minutes1: "02".obs),
    UserprofilelistItemModel(
        username: "Bruno Pham".obs,
        caption: "Great shot! I love it".obs,
        time: "2 mins ago".obs,
        minutes: "02".obs,
        minutes1: "02".obs),
    UserprofilelistItemModel(
        username: "Bruno Pham".obs,
        caption: "Great shot! I love it".obs,
        time: "2 mins ago".obs,
        minutes: "02".obs,
        minutes1: "02".obs)
  ]);
}
