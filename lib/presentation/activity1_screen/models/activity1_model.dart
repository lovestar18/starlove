import '../../../core/app_export.dart';
import 'userprofilelist3_item_model.dart';

/// This class defines the variables used in the [activity1_screen],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Activity1Model {
  Rx<List<Userprofilelist3ItemModel>> userprofilelist3ItemList = Rx([
    Userprofilelist3ItemModel(
        likedPostsImage: ImageConstant.imgOval34x34.obs,
        likedPostsImage1: ImageConstant.imgRectangle34x34.obs,
        likedPostsImage2: ImageConstant.imgRectangle1.obs,
        likedPostsImage3: ImageConstant.imgRectangle2.obs),
    Userprofilelist3ItemModel(
        likedPostsImage: ImageConstant.imgOval34x34.obs,
        likedPostsImage1: ImageConstant.imgRectangle34x34.obs,
        likedPostsImage2: ImageConstant.imgRectangle1.obs,
        likedPostsImage3: ImageConstant.imgRectangle2.obs),
    Userprofilelist3ItemModel(),
    Userprofilelist3ItemModel(),
    Userprofilelist3ItemModel(),
    Userprofilelist3ItemModel(),
    Userprofilelist3ItemModel(),
    Userprofilelist3ItemModel(),
    Userprofilelist3ItemModel(),
    Userprofilelist3ItemModel(),
    Userprofilelist3ItemModel(),
    Userprofilelist3ItemModel(),
    Userprofilelist3ItemModel()
  ]);
}
