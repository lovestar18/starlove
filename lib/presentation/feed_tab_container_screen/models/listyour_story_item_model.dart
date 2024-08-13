import '../../../core/app_export.dart';

/// This class is used in the [listyour_story_item_widget] screen.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ListyourStoryItemModel {
  ListyourStoryItemModel({this.yourStoryOne, this.yourstory, this.id}) {
    yourStoryOne = yourStoryOne ?? Rx(ImageConstant.imgPlay);
    yourstory = yourstory ?? Rx("Your Story");
    id = id ?? Rx("");
  }

  Rx<String>? yourStoryOne;

  Rx<String>? yourstory;

  Rx<String>? id;
}
