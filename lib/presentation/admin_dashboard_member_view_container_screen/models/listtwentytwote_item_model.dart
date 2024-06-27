import '../../../core/app_export.dart';

/// This class is used in the [listtwentytwote_item_widget] screen.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ListtwentytwoteItemModel {
  ListtwentytwoteItemModel({this.twentyTwoText, this.membersText, this.id}) {
    twentyTwoText = twentyTwoText ?? Rx("22");
    membersText = membersText ?? Rx("Members");
    id = id ?? Rx("");
  }

  Rx<String>? twentyTwoText;

  Rx<String>? membersText;

  Rx<String>? id;
}
