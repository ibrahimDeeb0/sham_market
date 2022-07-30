import '../../general_exports.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(AppColors.greyLight),
      body: GetBuilder<HomeScreenController>(
        init: HomeScreenController(),
        builder: (HomeScreenController controller) {
          return CommonContainer(
            style: CommonContainerModel(
              paddingHorizontal: 0.03,
            ),
            child: Stack(
              children: <Widget>[
                SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  controller: controller.scrollController,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      CommonContainer(
                        style: CommonContainerModel(
                          width: 1,
                          height: 0.2,
                          paddingVertical: 0.02,
                          //backgroundColor: Colors.red,
                        ),
                        child: const ImageHomeHeader(),
                      ),
                      CommonText(
                        text: 'الأصناف',
                        style: txtHomeLabeled,
                        containerStyle: CommonContainerModel(
                          paddingBottom: 0.015,
                          paddingHorizontal: 0.03,
                        ),
                      ),
                      CommonContainer(
                        style: CommonContainerModel(
                          width: 1,
                          height: 0.126,
                          // backgroundColor: AppColors.blue,
                        ),
                        child: const CategoriesHomeMenu(),
                      ),
                      Visibility(
                        visible: !controller.isViewd,
                        child: CommonText(
                          text: 'آخر العروض',
                          style: txtHomeLabeled,
                          containerStyle: CommonContainerModel(
                            paddingVertical: 0.015,
                            paddingHorizontal: 0.03,
                            //backgroundColor: Colors.green,
                          ),
                        ),
                      ),
                      Visibility(
                        visible: controller.isViewd,
                        child: CommonContainer(
                          style: CommonContainerModel(
                            width: 1,
                            height: 0.05,
                            paddingBottom: 0.015,
                            //backgroundColor: Colors.blue,
                          ),
                        ),
                      ),
                      GridView.builder(
                        itemCount: 10,
                        physics: const BouncingScrollPhysics(),
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithMaxCrossAxisExtent(
                          childAspectRatio: 0.63, //0.65,
                          mainAxisSpacing: 9.0,
                          crossAxisSpacing: 9.0,
                          maxCrossAxisExtent: 200,
                        ),
                        itemBuilder: (BuildContext context, int index) {
                          return const ProductCard();
                        },
                      ),
                      // const CardItems(),
                      SizedBox(height: DEVICE_HEIGHT * 0.1),
                    ],
                  ),
                ),
                Visibility(
                  visible: controller.isViewd,
                  child: Positioned(
                    top: 0,
                    child: CommonText(
                      text: 'آخر العروض',
                      style: txtHomeLabeled,
                      containerStyle: CommonContainerModel(
                        width: 1,
                        height: 0.06,
                        paddingVertical: 0.015,
                        paddingHorizontal: 0.03,
                        backgroundColor: AppColors.greyLight,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
