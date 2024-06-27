import '../../../core/app_export.dart';
import 'userprofilelist2_item_model.dart';

/// This class defines the variables used in the [followers_tab_container_screen],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class FollowersTabContainerModel {
  Rx<List<Userprofilelist2ItemModel>> userprofilelist2ItemList =
      Rx(List.generate(1, (index) => Userprofilelist2ItemModel()));
}
