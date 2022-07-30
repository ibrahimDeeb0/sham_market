import '../../general_exports.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    this.productName,
    this.productPrice,
    this.productImage,
    super.key,
  });

  final String? productName;
  final String? productPrice;
  final String? productImage;

  @override
  Widget build(BuildContext context) {
    return CommonContainer(
      style: CommonContainerModel(
        backgroundColor: AppColors.white,
        borderWidth: 2,
        borderColor: Colors.black,
        borderRadius: 0.03,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          CommonContainer(
            onPress: () => <
                Map<dynamic,
                    dynamic>>{}, //Get.toNamed( user.rules == 'admin' ? routeHomeBottomBar : routeViewProduct),
            style: CommonContainerModel(
              width: 1,
              //height: 0.2,
              backgroundColor: Colors.white, // AppColors.white,
              borderWidth: 1,
              borderRadius: 0.025,
            ),
            child: CommonContainer(
              onPress: () {
                Get.to(const ItemDetails());
              },
              style: CommonContainerModel(
                width: 1,
                // height: 0.9,
                backgroundColor: AppColors.white,
                borderWidth: 1,
                borderRadius: 0.025,
              ),
              child: Column(
                children: <Widget>[
                  Image.asset(
                    productImage ?? image2,
                    fit: BoxFit.contain,
                  ),
                  CommonContainer(
                    style: CommonContainerModel(
                      width: 1,
                      height: 0.072,
                      backgroundColor: AppColors.white,
                      borderRadius: 0.025,
                    ),
                    child: CommonText(
                      text: productName ?? 'أسم المنتج',
                      style: CommonTextModel(
                        fontSize: COMMON_H3_FONT,
                        fontColor: Colors.black,
                        fontWeight: FontWeight.bold,
                        columnMainAxisAlignment: MainAxisAlignment.center,
                        rowMainAxisAlignment: MainAxisAlignment.center,
                        fontFamily: 'Tajawal',
                        overflow: TextOverflow.ellipsis,
                      ),
                      bottomChild: CommonText(
                        text: productPrice ?? 'سعر المنتج',
                        style: CommonTextModel(
                          fontColor: Colors.black,
                          fontWeight: FontWeight.bold,
                          columnMainAxisAlignment: MainAxisAlignment.center,
                          rowMainAxisAlignment: MainAxisAlignment.center,
                          fontFamily: 'Tajawal',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          CommonButton(
            text: 'أضف إلى المفضلة',
            textStyle: appTextStyles.h3StyleWhite().copyWith(
                  fontWeight: FontWeight.bold,
                ),
            borderRadius: 0.025,
            containerStyle: CommonContainerModel(
              width: 1,
              height: 0.051,
              //paddingVertical: 0.01,
            ),
            backgroundColor: AppColors.primary,
          ),
        ],
      ),
    );
  }
}
/*
Image.asset(
              productImage ?? image2,
              fit: BoxFit.contain,
            ),
          ),
          CommonContainer(
            style: CommonContainerModel(
              width: 1,
              height: 0.06,
              backgroundColor: AppColors.white,
            ),
            child: CommonText(
              text: productName ?? 'أسم المنتج',
              style: CommonTextModel(
                fontSize: COMMON_H3_FONT,
                fontColor: Colors.black,
                fontWeight: FontWeight.bold,
                columnMainAxisAlignment: MainAxisAlignment.center,
                rowMainAxisAlignment: MainAxisAlignment.center,
                fontFamily: 'Tajawal',
                overflow: TextOverflow.ellipsis,
              ),
              bottomChild: CommonText(
                text: productPrice ?? 'سعر المنتج',
                style: CommonTextModel(
                  fontColor: Colors.black,
                  fontWeight: FontWeight.bold,
                  columnMainAxisAlignment: MainAxisAlignment.center,
                  rowMainAxisAlignment: MainAxisAlignment.center,
                  fontFamily: 'Tajawal',
                ),
              ),
            ),
          ),


*/
