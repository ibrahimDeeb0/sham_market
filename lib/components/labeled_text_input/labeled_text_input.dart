import '../../general_exports.dart';

class LabeledTextInput extends StatelessWidget {
  const LabeledTextInput({
    required this.textEditingController,
    this.addFieldTitle = false,
    this.fieldTitle,
    this.fieldLabel,
    this.hintLabel,
    this.validator,
    this.textInputAction,
    this.textInputType,
    this.obscureText = false,
    this.width = 1,
    this.onChange,
    this.suffixIcon,
    super.key,
  });

  final bool? addFieldTitle;
  final String? fieldTitle;
  final String? fieldLabel;
  final String? hintLabel;
  final TextEditingController textEditingController;
  final String? Function(String?)? validator;
  final Function(String?)? onChange;
  final TextInputAction? textInputAction;
  final TextInputType? textInputType;
  final bool? obscureText;
  final double? width;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LabeledTextController>(
      init: LabeledTextController(),
      global: false,
      builder: (LabeledTextController controller) => addFieldTitle == true
          ? CommonText(
              style: CommonTextModel(
                fontSize: COMMON_H3_FONT,
                fontFamily: 'Tajawal',
                rowCrossAxisAlignment: CrossAxisAlignment.start,
                columnCrossAxisAlignment: CrossAxisAlignment.start,
              ),
              containerStyle: CommonContainerModel(
                paddingTop: 0.01,
                marginVertical: 0.01,
              ),
              text: fieldTitle ?? 'Field Title',
              bottomChild: CommonTextInput(
                onChanged: onChange,
                containerStyle: CommonContainerModel(
                  paddingTop: 0.01,
                  width: width,
                ),
                textEditingController: textEditingController,
                style: CommonTextInputModel(
                  //validator: (String? value) {},
                  obscureText: obscureText ?? false,
                  focusNode: controller.focus,
                  maxLines: 1,
                  textInputAction: textInputAction,
                  cursorColor: AppColors.primary,
                  textInputType: textInputType ?? TextInputType.none,
                  inputDecoration: InputDecoration(
                    fillColor: Color(AppColors.white),
                    filled: true,
                    labelStyle: TextStyle(
                      color: !controller.isFocused
                          ? Colors.grey
                          : Color(AppColors.primary),
                      fontSize: COMMON_H3_FONT,
                      fontFamily: 'Tajawal',
                    ),
                    hintStyle: TextStyle(
                      color: Color(AppColors.grey),
                      fontSize: COMMON_H4_FONT,
                      fontFamily: 'Tajawal',
                    ),
                    enabledBorder: border(Color(AppColors.grey12)),
                    focusedBorder: border(Color(AppColors.primary)),
                    hintText: hintLabel ?? 'Hint Label',
                    suffix: suffixIcon,
                  ),
                ),
              ),
            )
          : CommonTextInput(
              containerStyle: CommonContainerModel(
                paddingVertical: 0.0075,
                marginVertical: 0.0075,
                width: width,
              ),
              textEditingController: textEditingController,
              style: CommonTextInputModel(
                obscureText: obscureText ?? false,
                focusNode: controller.focus,
                maxLines: 1,
                textInputAction: textInputAction,
                inputDecoration: InputDecoration(
                  fillColor: Color(AppColors.white),
                  filled: true,
                  labelText: fieldLabel ?? 'Field Label',
                  labelStyle: TextStyle(
                    color: !controller.isFocused ? Colors.grey : Colors.blue,
                    fontSize: fontH3,
                  ),
                  enabledBorder: border(Color(AppColors.grey12)),
                  focusedBorder: border(Color(AppColors.primary)),
                  hintText: hintLabel ?? 'Hint Label',
                ),
              ),
            ),
    );
  }

  OutlineInputBorder border(Color borderColor) {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: borderColor,
      ),
      borderRadius: BorderRadius.circular(8.0),
    );
  }
}



// class LabeledTextInput extends StatelessWidget {
//   const LabeledTextInput({
//     required this.label,
//     required this.textEditingController,
//     this.textInputAction,
//     this.obscureText = false,
//     super.key,
//   });

//   final String label;
//   final TextEditingController? textEditingController;
//   final bool? obscureText;
//   final TextInputAction? textInputAction;

//   @override
//   Widget build(BuildContext context) {
//     return GetBuilder<LabeledTextController>(
//       init: LabeledTextController(),
//       global: false,
//       builder: (LabeledTextController controller) => CommonTextInput(
//         textEditingController: textEditingController,
//         style: CommonTextInputModel(
//           obscureText: obscureText,
//           focusNode: controller.focus,
//           maxLines: 1,
//           textInputAction: textInputAction,
//           inputDecoration: InputDecoration(
//             fillColor: Color(AppColors.white),
//             filled: true,
//             labelText: label,
//             labelStyle: TextStyle(
//               color: !controller.isFocused
//                   ? Color(AppColors.grey)
//                   : Color(AppColors.prime),
//               fontSize: COMMON_H3_FONT,
//             ),
//             enabledBorder: border(Color(AppColors.grey12)),
//             focusedBorder: border(Color(AppColors.primary)),
//           ),
//         ),
//       ),
//     );
//   }

//   OutlineInputBorder border(Color borderColor) {
//     return OutlineInputBorder(
//       borderSide: BorderSide(
//         color: borderColor,
//       ),
//       borderRadius: BorderRadius.circular(8.0),
//     );
//   }
// }
