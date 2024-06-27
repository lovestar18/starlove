import '../../../core/app_export.dart';
import 'grouplist_item_model.dart';

/// This class defines the variables used in the [groupsdashboard_screen],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class GroupsdashboardModel {
  Rx<List<GrouplistItemModel>> grouplistItemList = Rx([
    GrouplistItemModel(joinedText: "Joined".obs, createdText: "Created".obs),
    GrouplistItemModel(),
    GrouplistItemModel(),
    GrouplistItemModel(),
    GrouplistItemModel(),
    GrouplistItemModel(),
    GrouplistItemModel(),
    GrouplistItemModel()
  ]);
}
