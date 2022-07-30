import '../../general_exports.dart';

class LabeledTextController extends GetxController {
  bool isFocused = false;
  FocusNode focus = FocusNode();
  @override
  void onInit() {
    focus.addListener(_onFocusChange);
    super.onInit();
  }

  @override
  void onClose() {
    focus.removeListener(_onFocusChange);
    super.onClose();
  }

  void _onFocusChange() {
    isFocused = focus.hasFocus;
    update();
  }
}
