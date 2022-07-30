//import '../../components/bottom_sheet_container/bottom_sheet_container.dart';
import '../../general_exports.dart';

class RegistryBottomSheet extends StatelessWidget {
  const RegistryBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(
      init: AuthController(),
      global: false,
      builder: (AuthController controller) {
        return CommonContainer(
          style: CommonContainerModel(
            paddingHorizontal: 0.01,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(height: DEVICE_HEIGHT * 0.04),
                LabeledTextInput(
                  textEditingController: controller.nameInputController,
                  addFieldTitle: true,
                  fieldTitle: 'الأسم',
                  hintLabel: 'أدخل أسمك',
                  textInputAction: TextInputAction.next,
                  textInputType: TextInputType.name,
                  onChange: (String? value) => controller.update(),
                ),
                SizedBox(height: DEVICE_HEIGHT * 0.01),
                LabeledTextInput(
                  textEditingController: controller.emailInputController,
                  addFieldTitle: true,
                  fieldTitle: 'البريد الإلكتروني',
                  hintLabel: 'أدخل بريدك الإلكتروني',
                  textInputAction: TextInputAction.next,
                  textInputType: TextInputType.emailAddress,
                  onChange: (String? value) => controller.update(),
                ),
                SizedBox(height: DEVICE_HEIGHT * 0.01),
                LabeledTextInput(
                  textEditingController: controller.passwordInputController,
                  addFieldTitle: true,
                  fieldTitle: 'كلمة المرور',
                  hintLabel: 'أدخل كلمة المرور',
                  textInputAction: TextInputAction.next,
                  textInputType: TextInputType.visiblePassword,
                  onChange: (String? value) => controller.update(),
                  validator: (String? value) {
                    if (value.toString().length <= 6) {
                      return 'كلمة المرور جيب ان تكون على الأقل 6 أحرف';
                    } else {
                      return null;
                    }
                  },
                  obscureText: controller.isVisibility || true,
                ),
                SizedBox(height: DEVICE_HEIGHT * 0.02),
                CommonButton(
                  onPress: () {
                    final String name =
                        controller.nameInputController.text.trim();
                    final String email =
                        controller.emailInputController.text.trim();
                    final String password =
                        controller.passwordInputController.text;

                    controller.signUpUsingFirebase(
                      name: name,
                      email: email,
                      password: password,
                    );
                    controller.update();
                    MyAppController().update();
                  },
                  text: 'تأكيد',
                  backgroundColor: AppColors.primary,
                  borderRadius: 0.05,
                  minimumSize: MaterialStateProperty.all(
                    Size(
                      DEVICE_WIDTH * 1,
                      DEVICE_HEIGHT * 0.06,
                    ),
                  ),
                  textStyle: appTextStyles.h2MediumStyleWhite().copyWith(
                        fontSize: 26,
                      ),
                  isEnable: controller.isEnable(),
                ),
                SizedBox(height: DEVICE_HEIGHT * 0.02),
              ],
            ),
          ),
        );
      },
    );
  }
}
