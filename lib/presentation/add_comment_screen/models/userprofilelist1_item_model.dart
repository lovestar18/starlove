import '../../../core/app_export.dart';

/// This class is used in the [userprofilelist1_item_widget] screen.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Userprofilelist1ItemModel {
  Userprofilelist1ItemModel(
      {this.username,
      this.caption,
      this.timestamp,
      this.likesCount,
      this.commentsCount,
      this.id}) {
    username = username ?? Rx("Bruno Pham");
    caption = caption ?? Rx("Great shot! I love it");
    timestamp = timestamp ?? Rx("2 mins ago");
    likesCount = likesCount ?? Rx("02");
    commentsCount = commentsCount ?? Rx("02");
    id = id ?? Rx("");
  }

  Rx<String>? username;

  Rx<String>? caption;

  Rx<String>? timestamp;

  Rx<String>? likesCount;

  Rx<String>? commentsCount;

  Rx<String>? id;
}
