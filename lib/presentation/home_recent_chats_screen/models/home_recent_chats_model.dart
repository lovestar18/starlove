import '../../../core/app_export.dart';
import 'recentchatslist_item_model.dart';

/// This class defines the variables used in the [home_recent_chats_screen],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class HomeRecentChatsModel {
  Rx<List<RecentchatslistItemModel>> recentchatslistItemList = Rx([
    RecentchatslistItemModel(
        titleText: "Haley James".obs,
        descriptionText: "Stand up for what you believe in".obs,
        badgeText: "9".obs),
    RecentchatslistItemModel(
        titleText: "Brooke Davis".obs,
        descriptionText: "I am who I am. No excuses.".obs,
        badgeText: "2".obs),
    RecentchatslistItemModel(),
    RecentchatslistItemModel(),
    RecentchatslistItemModel(),
    RecentchatslistItemModel(),
    RecentchatslistItemModel(),
    RecentchatslistItemModel()
  ]);
}
