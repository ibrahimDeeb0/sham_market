import '../../general_exports.dart';

class CategoriesCards extends StatelessWidget {
  const CategoriesCards({
    Key? key,
    this.categoryName,
    this.categoryImage,
    this.onPress,
  }) : super(key: key);

  final String? categoryName;
  final String? categoryImage;
  final Function? onPress;

  @override
  Widget build(BuildContext context) {
    return CommonText(
      onPress: onPress ?? () {},
      text: categoryName ?? 'التصنيف',
      style: txtLabeledCategory.copyWith(
        fontColor: AppColors.colorBlack,
        fontSize: COMMON_H3_FONT,
        fontWeight: FontWeight.bold,
        maxlines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      containerStyle: CommonContainerModel(
        paddingHorizontal: 0.03,
        paddingVertical: 0.0005,
        touchEffect: TouchableEffect(
          type: TouchTypes.opacity,
        ),
      ),
      topChild: CommonContainer(
        style: CommonContainerModel(
          width: 0.45,
          height: 0.22,
          backgroundColor: AppColors.white,
          borderRadius: 0.05,
          borderWidth: 0.5,
          paddingHorizontal: 0.01,
          paddingVertical: 0.02,
          marginVertical: 0.015,
        ),
        child: Image.asset(categoryImage ?? image1),
      ),
    );
  }
}
