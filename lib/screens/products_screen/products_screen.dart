import '../../general_exports.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductsScreenController>(
        init: ProductsScreenController(),
        builder: (ProductsScreenController controller) {
          return Scaffold(
            appBar: CategoryContentsHeader(
              title: '${Get.arguments}',
            ),
            body: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: CommonContainer(
                style: CommonContainerModel(),
                child: CommonContainer(
                  style: CommonContainerModel(
                    paddingHorizontal: 0.03,
                    paddingVertical: 0.02,
                  ),
                  child: GridView.builder(
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
                ),
              ),
            ),
          );
        });
  }
}

class CategoryContentsHeader extends StatelessWidget with PreferredSizeWidget {
  const CategoryContentsHeader({
    this.withoutBackGround = false,
    this.title,
    super.key,
  });
  final String? title;
  final bool withoutBackGround;

  @override
  //* implement preferredSize
  Size get preferredSize =>
      Size.fromHeight(kToolbarHeight + DEVICE_HEIGHT * 0.062);
  @override
  Widget build(BuildContext context) {
    return CommonContainer(
      style: CommonContainerModel(
        borderBottomWidth: 1.5,
        borderBottomColor: Color(AppColors.grey).withOpacity(0.2),
      ),
      child: AppBar(
        elevation: 0.0,
        toolbarHeight: kToolbarHeight + DEVICE_HEIGHT * 0.012,
        backgroundColor:
            withoutBackGround ? Colors.transparent : Color(AppColors.white),
        centerTitle: true,
        title: CommonText(
          text: 'الشام ماركت',
          style: txtHeading,
        ),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back,
            color: Color(AppColors.prime),
            size: 32,
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Color(AppColors.colorBlack),
              size: 32,
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(40.0),
          child: CommonContainer(
            style: CommonContainerModel(
              height: 0.05,
              //backgroundColor: Colors.orange,
              borderBottomWidth: 2,
              borderBottomColor: AppColors.colorBlack,
            ),
            child: CommonText(
              text: title ?? 'الكل',
              style: appTextStyles.h2StyleBlack().copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: COMMON_H2_FONT,
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
