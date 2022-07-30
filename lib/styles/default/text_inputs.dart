import '../../general_exports.dart';

class DefaultTextInputStyles {
  CommonTextInputModel defaultTextInputModel() => CommonTextInputModel(
        fontSize: fontH3,
      );

  CommonTextInputModel completeProfileInput({
    String? hint,
    bool? enable = true,
    IconData? icon,
    bool? disableBackGround = false,
  }) =>
      CommonTextInputModel(
        focusBorderColor: AppColors.primary,
        hint: hint,
        radius: 8,
        maxLines: 1,
        fillColor: disableBackGround!
            ? Color(AppColors.grey).withOpacity(0.2)
            : Colors.transparent,
        hintColor: AppColors.grey,
        enabled: enable,
        suffixIcon: icon != null
            ? CommonIcon(
                path: icon,
              )
            : null,
        suffixMinWidth: DEVICE_WIDTH * 0.1,
      );
}
