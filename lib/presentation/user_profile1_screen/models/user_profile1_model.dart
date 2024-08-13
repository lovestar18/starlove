import '../../../core/app_export.dart';
import 'userprofilelist1_item_model.dart';

/// This class defines the variables used in the [user_profile1_screen],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class UserProfile1Model {
  Rx<List<Userprofilelist1ItemModel>> userprofilelist1ItemList =
      Rx(List.generate(10, (index) => Userprofilelist1ItemModel()));
}
