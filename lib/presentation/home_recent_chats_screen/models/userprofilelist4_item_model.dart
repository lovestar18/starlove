import '../../../core/app_export.dart';

/// This class is used in the [userprofilelist4_item_widget] screen.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Userprofilelist4ItemModel {
  Userprofilelist4ItemModel({this.userStatus, this.id}) {
    userStatus = userStatus ?? Rx("We are living the best times.");
    id = id ?? Rx("");
  }

  Rx<String>? userStatus;

  Rx<String>? id;
}
