import '../../../core/app_export.dart';

/// This class is used in the [userprofilelist_item_widget] screen.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class UserprofilelistItemModel {
  UserprofilelistItemModel(
      {this.username,
      this.caption,
      this.time,
      this.minutes,
      this.minutes1,
      this.id}) {
    username = username ?? Rx("Bruno Pham");
    caption = caption ?? Rx("Great shot! I love it");
    time = time ?? Rx("2 mins ago");
    minutes = minutes ?? Rx("02");
    minutes1 = minutes1 ?? Rx("02");
    id = id ?? Rx("");
  }

  Rx<String>? username;

  Rx<String>? caption;

  Rx<String>? time;

  Rx<String>? minutes;

  Rx<String>? minutes1;

  Rx<String>? id;
}
