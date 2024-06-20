import '../../../core/app_export.dart';
import 'userprofile_item_model.dart';

/// This class defines the variables used in the [group_description_page],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class GroupDescriptionModel {
  Rx<List<UserprofileItemModel>> userprofileItemList = Rx([
    UserprofileItemModel(adinanurrahma: "Adina Nurrahma".obs, you: "You".obs),
    UserprofileItemModel(),
    UserprofileItemModel(),
    UserprofileItemModel(),
    UserprofileItemModel(),
    UserprofileItemModel(),
    UserprofileItemModel(),
    UserprofileItemModel(),
    UserprofileItemModel(),
    UserprofileItemModel(),
    UserprofileItemModel(),
    UserprofileItemModel()
  ]);
}
