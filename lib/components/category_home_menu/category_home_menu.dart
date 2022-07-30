import '../../general_exports.dart';

class CategoriesHomeMenu extends StatelessWidget {
  const CategoriesHomeMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 15,
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        return const HomeCatecoryContiner();
      },
    );
  }
}

class HomeCatecoryContiner extends StatelessWidget {
  const HomeCatecoryContiner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CommonText(
      text: 'التصنيف',
      style: txtLabeledCategory,
      topChild: CommonContainer(
        style: CommonContainerModel(
          width: 0.19,
          height: 0.09,
          backgroundColor: AppColors.grey12,
          borderRadius: 0.05,
          borderWidth: 0.5,
          marginHorizontal: 0.006,
          marginBottom: 0.005,
        ),
      ),
    );
  }
}
