import 'package:flutter/services.dart';
// import 'package:geolocator/geolocator.dart';

void hideKeyboard() {
  SystemChannels.textInput.invokeMethod('TextInput.hide');
}

int setColor(String color) {
  final String stringColor = '0xFF${color.replaceAll('#', '')}';
  final int newColor = int.parse(stringColor);
  return newColor;
}


/// get current location
// Future<Position?> getCurrentLocation() async {
//   consoleLog('get current position');
//   bool serviceEnabled;
//   LocationPermission permission;
//   // Test if location services are enabled.
//   serviceEnabled = await Geolocator.isLocationServiceEnabled();
//   if (!serviceEnabled) {
//     // Location services are not enabled don't continue
//     // accessing the position and request users of the
//     // App to enable the location services.
//     consoleLog('Location services are disabled.');
//     //showMessage(description: 'turn_on_location'.tr);
//     //serviceEnabled = await Geolocator.openLocationSettings();
//     return null;
//   }

//   permission = await Geolocator.checkPermission();
//   consoleLog(permission);
//   if (permission == LocationPermission.denied) {
//     permission = await Geolocator.requestPermission();
//     if (permission == LocationPermission.denied) {
//       // Permissions are denied, next time you could try
//       // requesting permissions again (this is also where
//       // Android's shouldShowRequestPermissionRationale
//       // returned true. According to Android guidelines
//       // your App should show an explanatory UI now.
//       consoleLog('Location permissions are denied');
//       return null;
//     }
//   }

//   if (permission == LocationPermission.deniedForever) {
//     // Permissions are denied forever, handle appropriately.
//     consoleLog(
//         'Location permissions are permanently denied, we cannot request permissions.');
//     return null;
//   }

//   // When we reach here, permissions are granted and we can
//   // continue accessing the position of the device.
//   return await Geolocator.getCurrentPosition(
//     desiredAccuracy: LocationAccuracy.high,
//   );
// }
