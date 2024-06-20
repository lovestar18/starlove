import '../../../core/app_export.dart';
import 'commentslist_item_model.dart';

/// This class defines the variables used in the [add_comment_screen],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class AddCommentModel {
  Rx<List<CommentslistItemModel>> commentslistItemList = Rx([
    CommentslistItemModel(
        username: "Bruno Pham".obs,
        commentText: "Great shot! I love it".obs,
        timeAgo: "2 mins ago".obs,
        onehundredtwent: "02".obs,
        likesCount: "02".obs),
    CommentslistItemModel(
        username: "Bruno Pham".obs,
        commentText: "Great shot! I love it".obs,
        timeAgo: "2 mins ago".obs,
        onehundredtwent: "02".obs,
        likesCount: "02".obs),
    CommentslistItemModel()
  ]);
}
