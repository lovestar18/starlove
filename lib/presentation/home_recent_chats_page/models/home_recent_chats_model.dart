import '../../../core/app_export.dart';
import 'userprofilelist6_item_model.dart';

/// This class defines the variables used in the [home_recent_chats_page],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class HomeRecentChatsModel {
  Rx<List<Userprofilelist6ItemModel>> userprofilelist6ItemList = Rx([
    Userprofilelist6ItemModel(
        userImage: ImageConstant.imgImage40x40.obs,
        username: "Darlene Steward".obs,
        description: "Pls take a look at the images.".obs,
        age: "18.31".obs,
        frameSize: "5".obs),
    Userprofilelist6ItemModel(
        userImage: ImageConstant.imgImage40x40.obs,
        username: "Lee Williamson".obs,
        description: "Yes, that’s gonna work, hopefully. ".obs),
    Userprofilelist6ItemModel(
        userImage: ImageConstant.imgImage40x40.obs,
        username: "Ronald Mccoy".obs),
    Userprofilelist6ItemModel(
        userImage: ImageConstant.imgImage40x40.obs,
        username: "Albert Bell".obs,
        description: "I‘m happy this anime has such grea...".obs),
    Userprofilelist6ItemModel(
        username: "Fullsnack Designers".obs,
        description: "Hello guys, we have discussed about ...".obs)
  ]);
}
