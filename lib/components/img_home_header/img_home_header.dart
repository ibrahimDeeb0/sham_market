import '../../general_exports.dart';

class ImageHomeHeader extends StatelessWidget {
  const ImageHomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonContainer(
      style: CommonContainerModel(
        width: 1,
        height: 1,
        backgroundColor: AppColors.grey12,
        borderWidth: 0.5,
        borderRadius: 0.05,
      ),
    );
  }
}
