import '../../../core/app_export.dart';

/// This class is used in the [userprofilelist2_item_widget] screen.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Userprofilelist2ItemModel {
  Userprofilelist2ItemModel({this.id}) {
    id = id ?? Rx("");
  }

  Rx<String>? id;
}
