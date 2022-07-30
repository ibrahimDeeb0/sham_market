import '../../general_exports.dart';

class BottomSheetContainer extends StatelessWidget {
  const BottomSheetContainer({
    this.child,
    this.title,
    this.height,
    this.style,
    Key? key,
  }) : super(key: key);

  final Widget? child;
  final String? title;
  final double? height;
  final CommonContainerModel? style;

  @override
  Widget build(BuildContext context) {
    return CommonContainer(
      style: style ?? appContainerStyles.bottomSheetContainer(height: height),
      child: Stack(
        children: <Widget>[
          CommonContainer(
            style: CommonContainerModel(
              marginTop: 0.03,
            ),
            child: child ?? const SizedBox(),
          ),
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: CommonText(
              text: title ?? '',
              style: appTextStyles.h2StyleBlack().copyWith(
                    fontWeight: FontWeight.w700,
                  ),
              containerStyle: CommonContainerModel(
                backgroundColor: AppColors.white,
              ),
              topChild: CommonContainer(
                style: CommonContainerModel(
                  width: 0.15,
                  height: 0.007,
                  borderRadius: 0.02,
                  backgroundColor: AppColors.grey,
                  marginTop: 0.01,
                  marginBottom: 0.01,
                ),
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: CommonContainer(
              onPress: () => Get.back(),
              style: CommonContainerModel(
                alignment: AlignmentDirectional.centerEnd,
                marginTop: 0.015,
                backgroundColor: AppColors.colorBlack,
                borderRadius: 50,
              ),
              child: Icon(
                Icons.close,
                color: Color(AppColors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
