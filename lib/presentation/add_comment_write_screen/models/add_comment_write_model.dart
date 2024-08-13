import '../../../core/app_export.dart';
import 'userprofilelist2_item_model.dart';

/// This class defines the variables used in the [add_comment_write_screen],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class AddCommentWriteModel {
  Rx<List<Userprofilelist2ItemModel>> userprofilelist2ItemList = Rx([
    Userprofilelist2ItemModel(
        userDescription: "We are living the best times.".obs,
        replyText: "Reply".obs,
        replytext1: "02".obs,
        replytext2: "10".obs),
    Userprofilelist2ItemModel(),
    Userprofilelist2ItemModel(),
    Userprofilelist2ItemModel(),
    Userprofilelist2ItemModel(),
    Userprofilelist2ItemModel(),
    Userprofilelist2ItemModel(),
    Userprofilelist2ItemModel()
  ]);
}
