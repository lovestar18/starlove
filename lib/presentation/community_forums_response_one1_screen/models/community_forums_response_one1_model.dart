import '../../../core/app_export.dart';
import 'userprofilesection_item_model.dart';

/// This class defines the variables used in the [community_forums_response_one1_screen],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class CommunityForumsResponseOne1Model {
  Rx<List<UserprofilesectionItemModel>> userprofilesectionItemList = Rx([
    UserprofilesectionItemModel(
        userDescription: "We are living the best times.".obs,
        replycount1: "02".obs,
        replycount2: "10".obs,
        replyText: "Reply".obs),
    UserprofilesectionItemModel(
        userDescription: "We are living the best times.".obs,
        replycount1: "02".obs,
        replycount2: "10".obs,
        replyText: "Reply".obs),
    UserprofilesectionItemModel(
        userDescription: "We are living the best times.".obs,
        replycount1: "02".obs,
        replycount2: "10".obs,
        replyText: "Reply".obs)
  ]);
}
