import '../../general_exports.dart';

/// show alert
void showMessage({
  String? titleText,
  String? messageText,
  String? type,
  int? textColor,
  bool withBackground = true,
}) {
  Get.snackbar(
    '',
    '',
    snackPosition: SnackPosition.TOP,
    titleText: CommonText(
      style: appTextStyles
          .h3MediumStyleBlack()
          .copyWith(textAlign: TextAlign.start),
      containerStyle:
          CommonContainerModel(alignment: AlignmentDirectional.centerStart),
      text: titleText ?? 'alert',
      // text: description!,
    ),
    messageText: CommonText(
      style: appTextStyles
          .h3MediumStyle()
          .copyWith(textAlign: TextAlign.start, fontColor: AppColors.white),
      containerStyle:
          CommonContainerModel(alignment: AlignmentDirectional.centerStart),
      //text: languageByKey(alert),
      text: messageText ?? 'messageText',
    ),
    backgroundColor: Colors.grey,
    duration: const Duration(seconds: 5),
    //barBlur: 2,
  );
}

/// show popup
void showPopUp({Widget? child}) {
  Get.dialog(
    child!,
    barrierDismissible: false,
    barrierColor: Colors.transparent,
  );
}
