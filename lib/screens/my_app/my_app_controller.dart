//import 'package:firebase_auth/firebase_auth.dart';

import '../../general_exports.dart';

class MyAppController extends GetxController {
  dynamic userData;
  bool showMapDragBubble = true;
  LocalStorage localStorage = LocalStorage();
  Map<String, dynamic>? fireBaseUserData;

  @override
  Future<void> onInit() async {
    super.onInit();
    userData = await localStorage.getFromStorage(key: storeUser);
    fireBaseUserData =
        await localStorage.getFromStorage(key: storeFireBaseUserData);
    showMapDragBubble =
        await localStorage.getFromStorage(key: storeShowMapDragBubble) ?? true;
    consoleLog('userData is:  $userData');
    consoleLog('fireBaseUserData is:  $fireBaseUserData');
  }

  Future<void> updateData() async {
    final List<int> currentMap = <int>[1, 2, 3];
    final List<int> newList = <int>[];
    for (int item in currentMap) {
      newList.add(item);
    }
    update();
  }

  void updateFireBaseUserData(dynamic userDataValue) {
    localStorage.saveToStorage(
        key: storeFireBaseUserData, value: userDataValue);
    fireBaseUserData = userDataValue;
    consoleLog('MyApp userDataValue => $userDataValue');
    consoleLog('MyApp fireBaseUserData is:  $fireBaseUserData');
    update();
  }

  void setShowMapDragBubble(dynamic newValue) {
    showMapDragBubble = newValue;
    localStorage.saveToStorage(
      key: storeShowMapDragBubble,
      value: showMapDragBubble,
    );
  }

  void onSignOut() {
    localStorage.erase();
    userData = null;
    fireBaseUserData = null;
    update();
  }
}
