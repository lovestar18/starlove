import '../../../core/app_export.dart';
import 'userprofilesgrid1_item_model.dart';
import 'userprofilesgrid_item_model.dart';

/// This class defines the variables used in the [discover1_screen],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Discover1Model {
  Rx<List<UserprofilesgridItemModel>> userprofilesgridItemList = Rx([
    UserprofilesgridItemModel(
        userImage: ImageConstant.imgRectangle195.obs,
        fullName: "Full Name".obs,
        username: "Username".obs,
        fullName1: ImageConstant.imgGroup427320935.obs),
    UserprofilesgridItemModel(
        userImage: ImageConstant.imgRectangle195130x162.obs,
        fullName: "Full Name".obs,
        username: "Username".obs),
    UserprofilesgridItemModel(
        userImage: ImageConstant.imgRectangle1951.obs,
        fullName: "Full Name".obs,
        username: "Username".obs,
        fullName1: ImageConstant.imgGroup427320935.obs),
    UserprofilesgridItemModel(
        userImage: ImageConstant.imgRectangle1952.obs,
        fullName: "Full Name".obs,
        username: "Username".obs),
    UserprofilesgridItemModel(
        userImage: ImageConstant.imgRectangle1953.obs,
        fullName: "Full Name".obs,
        username: "Username".obs,
        fullName1: ImageConstant.imgGroup427320935.obs),
    UserprofilesgridItemModel(
        userImage: ImageConstant.imgRectangle1954.obs,
        fullName: "Full Name".obs,
        username: "Username".obs),
    UserprofilesgridItemModel()
  ]);

  Rx<List<Userprofilesgrid1ItemModel>> userprofilesgrid1ItemList = Rx([
    Userprofilesgrid1ItemModel(
        fullNameText: "Full Name".obs,
        usernameText: "Username".obs,
        settingsImage: ImageConstant.imgSettingsPrimary.obs,
        fullNameImage: ImageConstant.imgVectorPrimary.obs),
    Userprofilesgrid1ItemModel(
        fullNameText: "Full Name".obs,
        usernameText: "Username".obs,
        settingsImage: ImageConstant.imgSettingsPrimary.obs,
        fullNameImage: ImageConstant.imgVectorPrimary.obs),
    Userprofilesgrid1ItemModel(
        fullNameText: "Full Name".obs,
        usernameText: "Username".obs,
        settingsImage: ImageConstant.imgSettingsPrimary.obs,
        fullNameImage: ImageConstant.imgVectorPrimary.obs),
    Userprofilesgrid1ItemModel(
        fullNameText: "Full Name".obs,
        usernameText: "Username".obs,
        settingsImage: ImageConstant.imgSettingsPrimary.obs,
        fullNameImage: ImageConstant.imgVectorPrimary.obs),
    Userprofilesgrid1ItemModel(
        fullNameText: "Full Name".obs,
        usernameText: "Username".obs,
        settingsImage: ImageConstant.imgSettingsPrimary.obs,
        fullNameImage: ImageConstant.imgVectorPrimary.obs),
    Userprofilesgrid1ItemModel(
        fullNameText: "Full Name".obs,
        usernameText: "Username".obs,
        settingsImage: ImageConstant.imgSettingsPrimary.obs,
        fullNameImage: ImageConstant.imgVectorPrimary.obs),
    Userprofilesgrid1ItemModel(),
    Userprofilesgrid1ItemModel()
  ]);
}
