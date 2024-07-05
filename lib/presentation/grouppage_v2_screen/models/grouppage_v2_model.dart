import '../../../core/app_export.dart';
import 'slidergroupname_item_model.dart';

/// This class defines the variables used in the [grouppage_v2_screen],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class GrouppageV2Model {
  Rx<List<SlidergroupnameItemModel>> slidergroupnameItemList =
      Rx(List.generate(1, (index) => SlidergroupnameItemModel()));
}
