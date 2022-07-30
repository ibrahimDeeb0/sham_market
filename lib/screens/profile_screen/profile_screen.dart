import '../../components/bottom_sheet_container/bottom_sheet_container.dart';
import '../../general_exports.dart';

class MyAccount extends StatelessWidget {
  const MyAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MyAppController>(
      init: MyAppController(),
      builder: (MyAppController controller) {
        return Column(
          children: <Widget>[
            CommonContainer(
              style: CommonContainerModel(
                width: 1,
                height: 0.44,
                backgroundColor: AppColors.primary,
                bottomLeftRadius: 0.08,
                bottomRightRadius: 0.08,
                shadowBlurRadius: 12,
                shadowColor: AppColors.grey,
                shadowOffsetDY: 4,
                shadowOpacity: 1.0,
              ),
              child: Column(
                children: <Widget>[
                  CircleAvatar(
                    backgroundColor: Color(AppColors.primary),
                    maxRadius: 70,
                    child: const Icon(
                      Icons.account_circle_sharp,
                      size: 110,
                      color: Colors.white,
                      shadows: <Shadow>[
                        Shadow(
                          color: Colors.black26, //Colors.black26
                          offset: Offset(5, 5),
                          blurRadius: 12,
                        ),
                      ],
                    ),
                  ),
                  CommonText(
                    text: 'مرحباً بك في الشام ماركت',
                    style: appTextStyles.h1StyleBlack().copyWith(
                      fontColor: AppColors.white,
                      fontWeight: FontWeight.bold,
                      shadows: <Shadow>[
                        const Shadow(
                          color: Colors.black26, //Colors.black26
                          offset: Offset(5, 5),
                          blurRadius: 12,
                        ),
                      ],
                    ),
                  ),
                  Visibility(
                    visible: (controller.fireBaseUserData == null),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        CommonButton(
                          onPress: () {
                            if (controller.fireBaseUserData == null) {
                              Get.bottomSheet(
                                const BottomSheetContainer(
                                  height: 0.46,
                                  title: 'تسجيل الدخول',
                                  child: LogInBottomSheet(),
                                ),
                                isScrollControlled: true,
                              );
                            }
                          },
                          text: 'تسجيل الدخول',
                          textStyle: appTextStyles.h2StyleBlack().copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                          borderRadius: 0.04,
                          containerStyle: CommonContainerModel(
                            width: 0.4,
                            shadowBlurRadius: 14,
                            shadowColor: AppColors.black87,
                            shadowOffsetDY: 8,
                            shadowOpacity: 0.2,
                            marginVertical: 0.01,
                          ),
                        ),
                        CommonButton(
                          onPress: () {
                            if (controller.fireBaseUserData == null) {
                              Get.bottomSheet(
                                const BottomSheetContainer(
                                  height: 0.6,
                                  title: 'التسجيل',
                                  child: RegistryBottomSheet(),
                                ),
                                isScrollControlled: true,
                              );
                            }
                          },
                          text: 'التسجيل',
                          textStyle: appTextStyles.h2StyleBlack().copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                          borderRadius: 0.04,
                          containerStyle: CommonContainerModel(
                            width: 0.4,
                            shadowBlurRadius: 14,
                            shadowColor: AppColors.black87,
                            shadowOffsetDY: 8,
                            shadowOpacity: 0.2,
                            marginVertical: 0.01,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Visibility(
                    visible: (controller.fireBaseUserData != null),
                    child: CommonText(
                      text: controller.fireBaseUserData?['name'],
                      style: appTextStyles.h1MediumStyleWhite().copyWith(
                        shadows: <Shadow>[
                          const Shadow(
                            color: Colors.black38, //Colors.black26
                            offset: Offset(5, 5),
                            blurRadius: 12,
                          ),
                        ],
                        maxlines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      containerStyle:
                          CommonContainerModel(paddingVertical: 0.015),
                    ),
                  ),
                  SizedBox(height: DEVICE_HEIGHT * 0.05),
                  Visibility(
                    visible: (controller.fireBaseUserData != null),
                    child: CommonContainer(
                      style: CommonContainerModel(
                        height: 0.048,
                        shadowBlurRadius: 14,
                        shadowColor: AppColors.colorBlack,
                        shadowOffsetDY: 8,
                        shadowOpacity: 0.4,
                      ),
                      child: CommonButton(
                        backgroundColor: AppColors.white,
                        borderRadius: 0.04,
                        minimumSize: MaterialStateProperty.all(
                          Size(DEVICE_WIDTH * 0.04, DEVICE_HEIGHT * 0.045),
                        ),
                        child: CommonText(
                          text: 'تسجيل الخروج',
                          style: appTextStyles.h2StylePrimary().copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                          leftChild: Padding(
                            padding: EdgeInsets.only(left: DEVICE_WIDTH * 0.02),
                            child: Icon(
                              Icons.logout_outlined,
                              color: Color(AppColors.primary),
                            ),
                          ),
                        ),
                        onPress: () {
                          controller.onSignOut();
                          controller.update();
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
