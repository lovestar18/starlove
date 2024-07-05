import '../../../core/app_export.dart';

/// This class is used in the [listgroupname_item_widget] screen.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ListgroupnameItemModel {
  ListgroupnameItemModel({this.groupName, this.groupDescriptio, this.id}) {
    groupName = groupName ?? Rx("Group name");
    groupDescriptio = groupDescriptio ?? Rx("description");
    id = id ?? Rx("");
  }

  Rx<String>? groupName;

  Rx<String>? groupDescriptio;

  Rx<String>? id;
}
