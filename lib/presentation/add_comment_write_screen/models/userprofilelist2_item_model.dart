import '../../../core/app_export.dart';

/// This class is used in the [userprofilelist2_item_widget] screen.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Userprofilelist2ItemModel {
  Userprofilelist2ItemModel(
      {this.userDescription,
      this.replyText,
      this.replytext1,
      this.replytext2,
      this.id}) {
    userDescription = userDescription ?? Rx("We are living the best times.");
    replyText = replyText ?? Rx("Reply");
    replytext1 = replytext1 ?? Rx("02");
    replytext2 = replytext2 ?? Rx("10");
    id = id ?? Rx("");
  }

  Rx<String>? userDescription;

  Rx<String>? replyText;

  Rx<String>? replytext1;

  Rx<String>? replytext2;

  Rx<String>? id;
}
