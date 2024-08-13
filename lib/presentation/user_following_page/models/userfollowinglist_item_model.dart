import '../../../core/app_export.dart';

/// This class is used in the [userfollowinglist_item_widget] screen.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class UserfollowinglistItemModel {
  UserfollowinglistItemModel({this.id}) {
    id = id ?? Rx("");
  }

  Rx<String>? id;
}
