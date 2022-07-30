import '../../general_exports.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CategoriesController>(
      init: CategoriesController(),
      builder: (CategoriesController controller) {
        if (controller.isLoading) {
          return Center(
            child: CircularProgressIndicator(
              valueColor:
                  AlwaysStoppedAnimation<Color>(Color(AppColors.primary)),
            ),
          );
        } else {
          return SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: <Widget>[
                GridView.builder(
                  itemCount: controller.categoryList.length,
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    childAspectRatio: 0.8,
                    mainAxisSpacing: DEVICE_HEIGHT * 0.0,
                    crossAxisSpacing: DEVICE_WIDTH * 0.0,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return CategoriesCards(
                      onPress: () => Get.toNamed(
                        routeProductsScreen,
                        arguments: 'تصنيف 1',
                      ),
                      categoryName:
                          '${controller.categoryList[index].id}  ${controller.categoryList[index].title}',
                      //categoryName: CategoriesModels.title[index],
                    );
                  },
                ),
                SizedBox(height: DEVICE_HEIGHT * 0.1),
              ],
            ),
          );
        }
      },
    );
  }
}
