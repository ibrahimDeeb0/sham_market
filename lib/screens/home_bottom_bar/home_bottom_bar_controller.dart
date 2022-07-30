import '../../general_exports.dart';

class HomeBottomBarController extends GetxController {
  int selectedIndex = 0;
  List<String> screensTitles = <String>[
    'Home',
    'Categories',
    'Favorites',
    'My Account',
  ];

  void onChangeIndex(int index) {
    selectedIndex = index;
    consoleLog(index);
    update();
  }
}
