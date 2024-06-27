import '../../../core/app_export.dart';
import 'likephotoslist_item_model.dart';

/// This class defines the variables used in the [notifications_page_screen],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class NotificationsPageModel {
  Rx<List<LikephotoslistItemModel>> likephotoslistItemList = Rx([
    LikephotoslistItemModel(
        likedPostsImage: ImageConstant.imgOval.obs,
        likedPostsImage1: ImageConstant.imgGroup7164.obs),
    LikephotoslistItemModel(),
    LikephotoslistItemModel(),
    LikephotoslistItemModel(),
    LikephotoslistItemModel(),
    LikephotoslistItemModel(),
    LikephotoslistItemModel(),
    LikephotoslistItemModel()
  ]);
}
