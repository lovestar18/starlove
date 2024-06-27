import '../../../core/app_export.dart';

/// This class is used in the [groupmemberslist_item_widget] screen.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class GroupmemberslistItemModel {
  GroupmemberslistItemModel(
      {this.groupImage, this.groupTitle, this.groupMembers, this.id}) {
    groupImage = groupImage ?? Rx(ImageConstant.imgPeople142x60);
    groupTitle = groupTitle ?? Rx("22");
    groupMembers = groupMembers ?? Rx("Members");
    id = id ?? Rx("");
  }

  Rx<String>? groupImage;

  Rx<String>? groupTitle;

  Rx<String>? groupMembers;

  Rx<String>? id;
}
