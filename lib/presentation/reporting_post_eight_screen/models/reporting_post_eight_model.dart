import '../../../core/app_export.dart';
import 'questionnairelist_item_model.dart';

/// This class defines the variables used in the [reporting_post_eight_screen],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ReportingPostEightModel {
  Rx<List<QuestionnairelistItemModel>> questionnairelistItemList = Rx([
    QuestionnairelistItemModel(
        spamText: "It is spam".obs,
        postText: "It appears to be promoting unrelated content.".obs),
    QuestionnairelistItemModel(
        spamText: "Hate speech".obs,
        postText:
            "The content of this post contains offensive language or promotes discrimination."
                .obs),
    QuestionnairelistItemModel(
        spamText: "False Information".obs,
        postText:
            "The information in this post is misleading or factually incorrect."
                .obs),
    QuestionnairelistItemModel(
        spamText: "Nudity or Adult Content".obs,
        postText: "This post contains explicit or inappropriate material.".obs),
    QuestionnairelistItemModel(
        spamText: "Violence".obs,
        postText:
            "The content shared promotes harm or violence towards others.".obs),
    QuestionnairelistItemModel(
        spamText: "Intellectual Property Violation".obs,
        postText:
            "This post may infringe on copyrights, trademarks, or intellectual property rights."
                .obs),
    QuestionnairelistItemModel(
        spamText: "Other".obs,
        postText:
            "In the next step please provide additional details about why you are reporting this post."
                .obs)
  ]);
}
