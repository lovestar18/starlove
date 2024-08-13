import '../../../core/app_export.dart';

/// This class is used in the [memberslistsection_item_widget] screen.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class MemberslistsectionItemModel {
  MemberslistsectionItemModel(
      {this.memberName, this.username, this.moderator, this.id}) {
    memberName = memberName ?? Rx("Member Name");
    username = username ?? Rx("Username");
    moderator = moderator ?? Rx("Moderator");
    id = id ?? Rx("");
  }

  Rx<String>? memberName;

  Rx<String>? username;

  Rx<String>? moderator;

  Rx<String>? id;
}
