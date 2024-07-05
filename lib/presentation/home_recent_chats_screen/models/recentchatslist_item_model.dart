import '../../../core/app_export.dart';

/// This class is used in the [recentchatslist_item_widget] screen.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class RecentchatslistItemModel {
  RecentchatslistItemModel(
      {this.titleText, this.descriptionText, this.badgeText, this.id}) {
    titleText = titleText ?? Rx("Haley James");
    descriptionText = descriptionText ?? Rx("Stand up for what you believe in");
    badgeText = badgeText ?? Rx("9");
    id = id ?? Rx("");
  }

  Rx<String>? titleText;

  Rx<String>? descriptionText;

  Rx<String>? badgeText;

  Rx<String>? id;
}
