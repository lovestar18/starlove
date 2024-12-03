import '../../../core/app_export.dart';

/// This class is used in the [commentslist_item_widget] screen.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class CommentslistItemModel {
  CommentslistItemModel(
      {this.username,
      this.commentText,
      this.timeAgo,
      this.onehundredtwent,
      this.likesCount,
      this.id}) {
    username = username ?? Rx("Bruno Pham");
    commentText = commentText ?? Rx("Great shot! I love it");
    timeAgo = timeAgo ?? Rx("2 mins ago");
    onehundredtwent = onehundredtwent ?? Rx("02");
    likesCount = likesCount ?? Rx("02");
    id = id ?? Rx("");
  }

  Rx<String>? username;

  Rx<String>? commentText;

  Rx<String>? timeAgo;

  Rx<String>? onehundredtwent;

  Rx<String>? likesCount;

  Rx<String>? id;
}
