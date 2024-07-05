import '../../../core/app_export.dart';

/// This class is used in the [headerlist_item_widget] screen.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class HeaderlistItemModel {
  HeaderlistItemModel({this.members, this.pending, this.id}) {
    members = members ?? Rx("Members");
    pending = pending ?? Rx("Pending Application");
    id = id ?? Rx("");
  }

  Rx<String>? members;

  Rx<String>? pending;

  Rx<String>? id;
}
