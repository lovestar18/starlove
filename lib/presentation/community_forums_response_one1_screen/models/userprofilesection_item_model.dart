import '../../../core/app_export.dart';

/// This class is used in the [userprofilesection_item_widget] screen.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class UserprofilesectionItemModel {
  UserprofilesectionItemModel(
      {this.userDescription,
      this.replycount1,
      this.replycount2,
      this.replyText,
      this.id}) {
    userDescription = userDescription ?? Rx("We are living the best times.");
    replycount1 = replycount1 ?? Rx("02");
    replycount2 = replycount2 ?? Rx("10");
    replyText = replyText ?? Rx("Reply");
    id = id ?? Rx("");
  }

  Rx<String>? userDescription;

  Rx<String>? replycount1;

  Rx<String>? replycount2;

  Rx<String>? replyText;

  Rx<String>? id;
}
