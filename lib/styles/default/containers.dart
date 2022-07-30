import '../../general_exports.dart';

class DefaultContainerStyles {
  CommonContainerModel containerStyles = CommonContainerModel(
    width: 1,
    height: 0.95,
  );

  CommonContainerModel defaultButtonContainer = CommonContainerModel(
    width: 1,
    height: 0.06,
  );

  CommonContainerModel linkStyle = CommonContainerModel(
    touchEffect: TouchableEffect(
      type: TouchTypes.opacity,
    ),
  );

  CommonContainerModel blackLinearGradient = CommonContainerModel(
    width: 1,
    height: 1,
    foregroundDecoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: <Color>[
          Color(AppColors.colorBlack),
          Color(AppColors.colorBlack).withOpacity(0.5),
          Color(AppColors.colorBlack).withOpacity(0.1),
        ],
      ),
    ),
  );

  CommonContainerModel fullWidth = CommonContainerModel(
    width: 1,
  );

  CommonContainerModel marginBottom = CommonContainerModel(marginBottom: 0.03);

  CommonContainerModel loginContainer = CommonContainerModel(
    backgroundColor: AppColors.white,
    width: 1,
    height: .4,
    topLeftRadius: 0.05,
    topRightRadius: 0.05,
    paddingHorizontal: 0.06,
    paddingVertical: 0.02,
  );

  CommonContainerModel paddingBottom(double? padding) => CommonContainerModel(
        paddingBottom: padding,
      );

  CommonContainerModel paddingHorizontal(double? padding) =>
      CommonContainerModel(
        paddingHorizontal: padding,
      );

  CommonContainerModel paddingTop(double? padding) => CommonContainerModel(
        paddingTop: padding,
      );

  CommonContainerModel genderItemStyle() =>
      CommonContainerStyle().fullShadow.copyWith(
            paddingHorizontal: 0.01,
            paddingVertical: 0.01,
            marginVertical: 0.01,
            minWidth: 0.5,
            touchEffect: TouchableEffect(
              type: TouchTypes.opacity,
            ),
          );

  CommonContainerModel categoryParentStyle() => CommonContainerModel(
        height: 0.13,
        width: 0.9,
        borderRadius: 0.02,
        clipBehavior: Clip.hardEdge,
        marginTop: 0.014,
        touchEffect: TouchableEffect(
          type: TouchTypes.opacity,
        ),
      );

  CommonContainerModel categoryStyle() => CommonContainerModel(
        foregroundDecoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: FractionalOffset.topLeft,
              end: FractionalOffset.topCenter,
              colors: <Color>[
                Color.fromARGB(185, 0, 0, 0),
                Color.fromARGB(160, 0, 0, 0),
                Color.fromARGB(130, 0, 0, 0),
                Color.fromARGB(90, 0, 0, 0),
                Color.fromARGB(60, 0, 0, 0),
              ],
              stops: <double>[
                0.0,
                0.25,
                0.5,
                0.75,
                1.0
              ]),
        ),
      );

  CommonContainerModel splashGradient({bool isTopDirection = true}) =>
      CommonContainerModel(
        height: 1,
        width: 1,
        backgroundColor: Colors.black,
        boxGradient: LinearGradient(
          begin: isTopDirection ? Alignment.topRight : Alignment.bottomLeft,
          end: isTopDirection ? Alignment.bottomLeft : Alignment.topRight,
          colors: <Color>[
            Color(AppColors.primary).withOpacity(0.5),
            Color(AppColors.primary).withOpacity(0.7),
            Color(AppColors.primary).withOpacity(0.9),
            Color(AppColors.primary),
            Color(AppColors.primary),
          ],
        ),
      );

  CommonContainerModel bottomSheetContainer({double? height}) =>
      CommonContainerModel(
        height: height ?? 0.5,
        paddingHorizontal: 0.04,
        backgroundColor: AppColors.white,
        topLeftRadius: 0.05,
        topRightRadius: 0.05,
        width: 1,
        marginTop: 0.1,
      );
}
