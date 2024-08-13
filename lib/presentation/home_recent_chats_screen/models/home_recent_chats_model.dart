import '../../../core/app_export.dart';
import 'userprofilelist4_item_model.dart';

/// This class defines the variables used in the [home_recent_chats_screen],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class HomeRecentChatsModel {
  Rx<List<Userprofilelist4ItemModel>> userprofilelist4ItemList = Rx([
    Userprofilelist4ItemModel(userStatus: "We are living the best times.".obs),
    Userprofilelist4ItemModel(userStatus: "We are living the best times.".obs),
    Userprofilelist4ItemModel(userStatus: "We are living the best times.".obs),
    Userprofilelist4ItemModel()
  ]);
}
