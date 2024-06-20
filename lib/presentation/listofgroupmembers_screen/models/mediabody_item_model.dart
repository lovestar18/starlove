import '../../../core/app_export.dart';

/// This class is used in the [mediabody_item_widget] screen.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class MediabodyItemModel {
  MediabodyItemModel({this.username, this.handle, this.id}) {
    username = username ?? Rx("Name");
    handle = handle ?? Rx("@handle");
    id = id ?? Rx("");
  }

  Rx<String>? username;

  Rx<String>? handle;

  Rx<String>? id;
}
