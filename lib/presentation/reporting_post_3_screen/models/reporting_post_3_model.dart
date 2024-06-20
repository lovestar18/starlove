import '../../../core/app_export.dart';
import 'listwhyareyou_item_model.dart';

/// This class defines the variables used in the [reporting_post_3_screen],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ReportingPost3Model {
  Rx<List<ListwhyareyouItemModel>> listwhyareyouItemList = Rx([
    ListwhyareyouItemModel(whyareyou: "Why are you reporting this?".obs),
    ListwhyareyouItemModel(),
    ListwhyareyouItemModel(),
    ListwhyareyouItemModel(),
    ListwhyareyouItemModel(),
    ListwhyareyouItemModel(),
    ListwhyareyouItemModel(),
    ListwhyareyouItemModel()
  ]);
}
