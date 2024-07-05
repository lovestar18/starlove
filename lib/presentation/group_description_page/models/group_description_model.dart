import '../../../core/app_export.dart';
import 'userprofilelist4_item_model.dart';

/// This class defines the variables used in the [group_description_page],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class GroupDescriptionModel {
  Rx<List<Userprofilelist4ItemModel>> userprofilelist4ItemList = Rx([
    Userprofilelist4ItemModel(
        adinanurrahma: "Adina Nurrahma".obs, you: "You".obs),
    Userprofilelist4ItemModel(),
    Userprofilelist4ItemModel(),
    Userprofilelist4ItemModel(),
    Userprofilelist4ItemModel(),
    Userprofilelist4ItemModel(),
    Userprofilelist4ItemModel(),
    Userprofilelist4ItemModel(),
    Userprofilelist4ItemModel(),
    Userprofilelist4ItemModel(),
    Userprofilelist4ItemModel(),
    Userprofilelist4ItemModel()
  ]);
}
