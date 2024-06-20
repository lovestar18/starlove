import '../../../core/app_export.dart';

/// This class is used in the [grouplist_item_widget] screen.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class GrouplistItemModel {
  GrouplistItemModel({this.joinedText, this.createdText, this.id}) {
    joinedText = joinedText ?? Rx("Joined");
    createdText = createdText ?? Rx("Created");
    id = id ?? Rx("");
  }

  Rx<String>? joinedText;

  Rx<String>? createdText;

  Rx<String>? id;
}
