import '../../../core/app_export.dart';

/// This class is used in the [questionnairelist_item_widget] screen.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class QuestionnairelistItemModel {
  QuestionnairelistItemModel({this.spamText, this.postText, this.id}) {
    spamText = spamText ?? Rx("It is spam");
    postText = postText ?? Rx("It appears to be promoting unrelated content.");
    id = id ?? Rx("");
  }

  Rx<String>? spamText;

  Rx<String>? postText;

  Rx<String>? id;
}
