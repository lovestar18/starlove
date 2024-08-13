import '../../../core/app_export.dart';
import 'userprofileslist_item_model.dart';

/// This class defines the variables used in the [add_comment_screen],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class AddCommentModel {
  Rx<List<UserprofileslistItemModel>> userprofileslistItemList = Rx([
    UserprofileslistItemModel(
        userDescription: "We are living the best times.".obs,
        replyText: "Reply".obs,
        replytext2: "02".obs,
        replytext3: "10".obs),
    UserprofileslistItemModel(),
    UserprofileslistItemModel(),
    UserprofileslistItemModel(),
    UserprofileslistItemModel(),
    UserprofileslistItemModel(),
    UserprofileslistItemModel(),
    UserprofileslistItemModel()
  ]);
}
