import '../../../core/app_export.dart';
import 'userfollowinglist_item_model.dart';

/// This class defines the variables used in the [user_following_page],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class UserFollowingModel {
  Rx<List<UserfollowinglistItemModel>> userfollowinglistItemList =
      Rx(List.generate(11, (index) => UserfollowinglistItemModel()));
}
