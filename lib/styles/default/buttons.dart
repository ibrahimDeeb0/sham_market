import '../../general_exports.dart';

final DefaultTextStyles _defaultTextStyles = DefaultTextStyles();
final DefaultContainerStyles _defaultContainerStyles = DefaultContainerStyles();

class DefaultButtonStyles {
  CommonButtonStyle defaultButtonStyle() => CommonButtonStyle(
        containerStyle: _defaultContainerStyles.defaultButtonContainer,
        style: defaultButtonModel(),
        textStyle: _defaultTextStyles.h3MediumStyleWhite(),
      );

  CommonButtonModel defaultButtonModel() => CommonButtonModel(
        backgroundColor: AppColors.primary,
        borderRadius: 8,
      );

  CommonButtonStyle bottomMarginButtonStyle() => defaultButtonStyle().copyWith(
        containerStyle: defaultButtonStyle().containerStyle!.copyWith(
              marginBottom: 0.03,
            ),
      );

  CommonButtonStyle scanButtonStyle() => defaultButtonStyle().copyWith(
        containerStyle: defaultButtonStyle().containerStyle!.copyWith(
              marginTop: 0.03,
              width: 0.7,
            ),
      );

  CommonButtonStyle loginButton({int? color, double marginBottom = 0.0}) =>
      defaultButtonStyle().copyWith(
        containerStyle:
            appButtonStyles.defaultButtonStyle().containerStyle!.copyWith(
                  marginTop: 0.018,
                  marginBottom: marginBottom,
                ),
        style: defaultButtonModel().copyWith(
          backgroundColor: color ?? AppColors.primary,
        ),
        textStyle: defaultButtonStyle().textStyle!.copyWith(
              fontColor: color != null ? AppColors.primary : AppColors.white,
            ),
      );
}
