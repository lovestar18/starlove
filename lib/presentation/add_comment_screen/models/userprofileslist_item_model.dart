import '../../../core/app_export.dart';

/// This class is used in the [userprofileslist_item_widget] screen.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class UserprofileslistItemModel {
  UserprofileslistItemModel(
      {this.userDescription,
      this.replyText,
      this.replytext2,
      this.replytext3,
      this.id}) {
    userDescription = userDescription ?? Rx("We are living the best times.");
    replyText = replyText ?? Rx("Reply");
    replytext2 = replytext2 ?? Rx("02");
    replytext3 = replytext3 ?? Rx("10");
    id = id ?? Rx("");
  }

  Rx<String>? userDescription;

  Rx<String>? replyText;

  Rx<String>? replytext2;

  Rx<String>? replytext3;

  Rx<String>? id;
}
