import 'package:firebase_auth/firebase_auth.dart';
import '../../general_exports.dart';
import '../../utils/helper/ui_utils.dart';

class AuthController extends GetxController {
  TextEditingController nameInputController = TextEditingController();
  TextEditingController emailInputController = TextEditingController();
  TextEditingController passwordInputController = TextEditingController();

  bool isVisibility = false;
  void visibility() {
    isVisibility = !isVisibility;
    update();
  }

  MyAppController myAppController = Get.find<MyAppController>();

//isEnable()  // للتحكم بين اللون السكني والبرايمري
  bool isEnable() {
    return nameInputController.text.trim() != '' &&
        emailInputController.text.trim() != '' &&
        passwordInputController.text.trim() != '';
  }

  bool isEnableLogin() {
    return emailInputController.text.trim() != '' &&
        passwordInputController.text.trim() != '';
  }

  final FirebaseAuth _auth = FirebaseAuth.instance;
  late AuthStatus _status;

  // String displayUserName = '';

//-----------------------------signUpUsingFirebase-------------------------------------------------//

  Future<AuthStatus> signUpUsingFirebase({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      startLoading();
      final UserCredential newUser = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      update();
      User? user = newUser.user;
      if (user != null) {
        await user.updateDisplayName(name);
        await user.reload();
        update();
        user = _auth.currentUser;
        final Map<String, dynamic> userData = <String, dynamic>{
          'name': user!.displayName,
          'email': user.email,
        };
        myAppController.updateFireBaseUserData(userData);
        myAppController.update();
        //  print final version to console
        // consoleLog('Registered user:');
        // consoleLog(user);
        update();
      }
      _status = AuthStatus.successful;
      hideKeyboard();
      update();
      myAppController.update();

      Get.back();
      showMessage(
        titleText: 'تنبيه:',
        messageText: 'تم التسجيل بنجاح',
      );

      dismissLoading();
      update();
    } on FirebaseAuthException catch (e) {
      dismissLoading();
      hideKeyboard();
      _status = AuthExceptionHandler.handleAuthException(e);
      update();
    }
    dismissLoading();
    hideKeyboard();
    update();
    return _status;
  }

  //------------------------------logInUsingFirebase------------------------------------------------//

  Future<AuthStatus> logInUsingFirebase({
    required String email,
    required String password,
  }) async {
    try {
      startLoading();
      final UserCredential newUser = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      update();
      _status = AuthStatus.successful;
      hideKeyboard();
      update();
      User? user = newUser.user;
      user = _auth.currentUser;
      final Map<String, dynamic> userData = <String, dynamic>{
        'name': user!.displayName,
        'email': user.email,
      };
      myAppController.updateFireBaseUserData(userData);
      myAppController.update();

      Get.back();
      showMessage(
        titleText: 'تنبيه',
        messageText: 'تم تسجيل الدخول بنجاح',
      );
      dismissLoading();
      consoleLog('return _status; $_status');
      update();
    } on FirebaseAuthException catch (e) {
      dismissLoading();
      hideKeyboard();
      _status = AuthExceptionHandler.handleAuthException(e);
      consoleLog('return _status; $_status');
      update();
    }
    dismissLoading();
    hideKeyboard();
    update();
    consoleLog('return _status; $_status');
    return _status;
  }
}

//   Future<void> logInUsingFirebase({
//     required String email,
//     required String password,
//   }) async {
//     try {
//       startLoading();
//       await _auth
//           .signInWithEmailAndPassword(
//         email: email,
//         password: password,
//       )
//           .then(
//         (UserCredential value) {
//           final Map<String, dynamic> newData = <String, dynamic>{
//             'email': value.user?.email,
//             'name': value.user?.displayName,
//           };
//           // firebaseUserData = newData;
//           myAppController.updateFireBaseUserData(newData);
//           Get.find<MyAppController>().update();
//           update();
//           // Get.to(const MyAccount());
//           Get.back();
//           showMessage(
//             titleText: 'Success',
//             messageText: 'Successfully Logined',
//             textColor: AppColors.white,
//           );
//           dismissLoading();
//           // Get.forceAppUpdate();
//           Get.find<MyAppController>().update();
//           update();
//         },
//       );
//     } on FirebaseAuthException catch (error) {
//       dismissLoading();

//       final String title = error.code.replaceAll(RegExp('-'), ' ').capitalize!;
//       String message = '';

//       if (error.code == 'user-not-found') {
//         message = 'No user found for that email.';
//       } else if (error.code == 'wrong-password') {
//         message = 'Wrong password provided for that user.';
//       } else {
//         message = error.code.toString();
//       }
//       Get.snackbar(
//         title,
//         message,
//         snackPosition: SnackPosition.BOTTOM,
//         backgroundColor: Colors.green,
//         colorText: Colors.white,
//       );
//       // ignore: avoid_catches_without_on_clauses
//     } catch (error) {
//       dismissLoading();

//       Get.snackbar(
//         'Error!',
//         error.toString(),
//         snackPosition: SnackPosition.BOTTOM,
//         backgroundColor: Colors.green,
//         colorText: Colors.white,
//       );
//     }
//   }
// }





/*


          .then(
        (UserCredential value) {
          final User userFirebase = value.user!;

          final Map<String, dynamic> newData = <String, dynamic>{
            'email': value.user?.email,
            'name': value.user?.displayName,
          };
          myAppController.updateFireBaseUserData(newData);
          _firebaseUserData = newData;

          //displayUserName = name;
          // firebaseUserData = newData;
          // consoleLog('newData : $newData');
          // consoleLog('firebaseUserData is : $firebaseUserData');
          // consoleLog('user name is : ${newData[1]['name']}');
          // consoleLog(
          //     'firebaseUserData [1] [name] is : ${firebaseUserData![1]['name']}');
          update();
          hideKeyboard();
          Get.back();

          showMessage(
            titleText: 'Success',
            messageText: 'Successfully Registered',
            textColor: AppColors.white,
          );
          dismissLoading();
          update();
        },
      );

*/




/* 

 _auth.authStateChanges().listen(
        (User? user) async {
          if (user != null) {
            await user.updateDisplayName(name);
            await user.reload();
            update();
            consoleLog(newUser.user);
            consoleLog(user.uid);
          }
        },
      );
*/
