import '../../../core/app_export.dart';
import 'userprofilelist1_item_model.dart';

/// This class defines the variables used in the [add_comment_screen],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class AddCommentModel {
  Rx<List<Userprofilelist1ItemModel>> userprofilelist1ItemList = Rx([
    Userprofilelist1ItemModel(
        username: "Bruno Pham".obs,
        caption: "Great shot! I love it".obs,
        timestamp: "2 mins ago".obs,
        likesCount: "02".obs,
        commentsCount: "02".obs),
    Userprofilelist1ItemModel(
        username: "Bruno Pham".obs,
        caption: "Great shot! I love it".obs,
        timestamp: "2 mins ago".obs,
        likesCount: "02".obs,
        commentsCount: "02".obs),
    Userprofilelist1ItemModel(
        username: "Bruno Pham".obs,
        caption: "Great shot! I love it".obs,
        timestamp: "2 mins ago".obs,
        likesCount: "02".obs,
        commentsCount: "02".obs)
  ]);
}
