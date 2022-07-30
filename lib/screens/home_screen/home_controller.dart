import '../../general_exports.dart';

class HomeScreenController extends GetxController {
  ScrollController scrollController = ScrollController();
  bool isViewd = false;

  @override
  void onInit() {
    super.onInit();
    scrollController.addListener(_scrollListener);
  }

  void _scrollListener() {
    if (DEVICE_HEIGHT * 0.36 < scrollController.offset) {
      isViewd = true;
    } else {
      isViewd = false;
    }
    update();

    // consoleLog(scrollController.);
  }

  @override
  void onClose() {
    super.onClose();
    scrollController.removeListener(_scrollListener);
  }
}
