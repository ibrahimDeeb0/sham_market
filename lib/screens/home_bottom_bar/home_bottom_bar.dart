import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import '../../general_exports.dart';
//import 'package:flutter_svg/svg.dart';

class HomeBottomBar extends StatelessWidget {
  const HomeBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeBottomBarController>(
      init: HomeBottomBarController(),
      builder: (HomeBottomBarController controller) {
        return Scaffold(
          backgroundColor: Color(AppColors.greyLight),
          appBar: const Header(),
          body: Stack(
            children: <Widget>[
              Visibility(
                visible: controller.selectedIndex == 0,
                child: const HomeScreen(),
              ),
              Visibility(
                visible: controller.selectedIndex == 1,
                child: const CategoriesScreen(),
              ),
              Visibility(
                visible: controller.selectedIndex == 2,
                child: const CategoriesScreen(),
              ),
              Visibility(
                visible: controller.selectedIndex == 3,
                child: const MyAccount(),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child: CommonContainer(
                  style: CommonContainerStyle().fullShadow.copyWith(
                        backgroundColor: Colors.transparent,
                        paddingTop: 0.01,
                        shadowOpacity: 0.3,
                        shadowBlurRadius: 20,
                        shadowSpreadRadius: 4,
                      ),
                  child: CurvedNavigationBar(
                    items: <Widget>[
                      Visibility(
                        child: controller.selectedIndex == 0
                            ? Icon(
                                Icons.home,
                                color: Color(AppColors.white),
                              )
                            : CommonText(
                                text: 'الرئيسية',
                                style: CommonTextModel(
                                  fontFamily: 'AlMessiri',
                                  fontColor: AppColors.primary,
                                  fontSize: COMMON_H3_FONT,
                                ),
                                topChild: CommonContainer(
                                  style: CommonContainerModel(paddingTop: 0.02),
                                  child: Icon(
                                    Icons.home,
                                    size: 28,
                                    color: Color(AppColors.primary),
                                  ),
                                ),
                              ),
                      ),
                      Visibility(
                        child: controller.selectedIndex == 1
                            ? Icon(
                                Icons.category,
                                color: Color(AppColors.white),
                              )
                            : CommonText(
                                text: 'التصنيفات',
                                style: CommonTextModel(
                                  fontFamily: 'AlMessiri',
                                  fontColor: AppColors.primary,
                                  fontSize: COMMON_H3_FONT,
                                ),
                                topChild: CommonContainer(
                                  style: CommonContainerModel(paddingTop: 0.02),
                                  child: Icon(
                                    Icons.category,
                                    size: 28,
                                    color: Color(AppColors.primary),
                                  ),
                                ),
                              ),
                      ),
                      Visibility(
                        child: controller.selectedIndex == 2
                            ? Icon(
                                Icons.favorite,
                                color: Color(AppColors.white),
                              )
                            : CommonText(
                                text: 'المفضلة',
                                style: CommonTextModel(
                                  fontFamily: 'AlMessiri',
                                  fontColor: AppColors.primary,
                                  fontSize: COMMON_H3_FONT,
                                ),
                                topChild: CommonContainer(
                                  style: CommonContainerModel(paddingTop: 0.02),
                                  child: Icon(
                                    Icons.favorite,
                                    size: 28,
                                    color: Color(AppColors.primary),
                                  ),
                                ),
                              ),
                      ),
                      Visibility(
                        child: controller.selectedIndex == 3
                            ? Icon(
                                Icons.person,
                                color: Color(AppColors.white),
                              )
                            : CommonText(
                                text: 'حسابي',
                                style: CommonTextModel(
                                  fontFamily: 'AlMessiri',
                                  fontColor: AppColors.primary,
                                  fontSize: COMMON_H3_FONT,
                                ),
                                topChild: CommonContainer(
                                  style: CommonContainerModel(paddingTop: 0.02),
                                  child: Icon(
                                    Icons.person,
                                    size: 28,
                                    color: Color(AppColors.primary),
                                  ),
                                ),
                              ),
                      ),
                    ],
                    onTap: controller.onChangeIndex,
                    backgroundColor: Colors.transparent,
                    buttonBackgroundColor: Color(AppColors.primary),
                    animationDuration: const Duration(milliseconds: 350),
                    height: DEVICE_HEIGHT * 0.075,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
