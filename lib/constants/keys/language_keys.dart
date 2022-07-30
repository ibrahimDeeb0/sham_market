Map<String, dynamic>? languageJson = <String, dynamic>{};
List<dynamic>? languageList = <dynamic>[];

// This function is used to get the language value from a key
String translateByKey(String key) {
  try {
    if (languageJson != null && languageJson![key] != null) {
      return languageJson![key];
    } else {
      return key;
    }
  } on Exception {
    return key;
  }
}

// ******************* Language Keys *******************

const String hello = 'Hello';
const String resendOtp = 'Resend OTP?';
const String goToCamera = 'Camera';
const String gallery = 'Gallery';
