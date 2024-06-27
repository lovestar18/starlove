import '../../../core/app_export.dart';
import '../controller/help_contact_controller.dart';

/// A binding class for the HelpContactScreen.
///
/// This class ensures that the HelpContactController is created when the
/// HelpContactScreen is first loaded.
class HelpContactBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HelpContactController());
  }
}
