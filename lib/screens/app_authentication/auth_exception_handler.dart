import 'package:firebase_auth/firebase_auth.dart';

import '../../utils/helper/messages.dart';
import '../../utils/index.dart';

enum AuthStatus {
  successful,
  wrongPassword,
  emailAlreadyExists,
  invalidEmail,
  weakPassword,
  userNotFound,
  unknown,
}

class AuthExceptionHandler {
  static AuthStatus handleAuthException(FirebaseAuthException e) {
    AuthStatus status;
    switch (e.code) {
      case 'invalid-email':
        status = AuthStatus.invalidEmail;
        generateErrorMessage(status);
        break;
      case 'wrong-password':
        status = AuthStatus.wrongPassword;
        generateErrorMessage(status);
        break;
      case 'weak-password':
        status = AuthStatus.weakPassword;
        generateErrorMessage(status);
        break;
      case 'email-already-in-use':
        status = AuthStatus.emailAlreadyExists;
        generateErrorMessage(status);
        break;
      case 'user-not-found':
        status = AuthStatus.userNotFound;
        generateErrorMessage(status);
        break;
      default:
        status = AuthStatus.unknown;
        generateErrorMessage(status);
    }

    return status;
  }

  static void generateErrorMessage(dynamic error) {
    String errorMessage;
    switch (error) {
      case AuthStatus.invalidEmail:
        errorMessage = ' يرجى كتابة البريد الالكتروني بشكل صحيح.';
        break;
      case AuthStatus.weakPassword:
        errorMessage =
            'يجب أن تكون كلمة المرور على الاقل من 6 خانات من احرف وارقام.';
        break;
      case AuthStatus.wrongPassword:
        errorMessage = 'كلمة المرور غير صحيحة.';
        break;
      case AuthStatus.emailAlreadyExists:
        errorMessage = ' عنوان البريد الالكتروني موجود مسبقاً.';
        break;
      case AuthStatus.userNotFound:
        errorMessage =
            'البريد الالكتروني غير موجود \n يرجى كتابة البريد الإلكتروني بشكل صحيح!';
        break;
      default:
        errorMessage = 'عذراً: حدث خطأ غير متوقع، يرجى المحاولة لاحقاً.';
    }
    return showMessage(
      titleText: 'تنبيه!!',
      messageText: errorMessage,
    );
  }

  // static String generateErrorMessage(dynamic error) {
  //   String titleErrorMessage;
  //   String errorMessage;
  //   switch (error) {
  //     case AuthStatus.invalidEmail:
  //       //errorMessage = 'Your email address appears to be malformed.';
  //       titleErrorMessage = ' تنبيه: مشكلة في صيغة البريد الاكتروني!! ';
  //       errorMessage = ' يرجى كتابة البريد الالكتروني بشكل صحيح.';
  //       break;
  //     case AuthStatus.weakPassword:
  //       //errorMessage = 'Your password should be at least 6 characters.';
  //       titleErrorMessage = 'تنبيه: مشكلة في كلمة المرور !!';
  //       errorMessage =
  //          'جب ان تكون كلمة المرور تتكون على الاقل من 6 خانات من احرف وارقام.';
  //       break;
  //     // case AuthStatus.wrongPassword:
  //     //   //errorMessage = 'Your email or password is wrong.';
  //     //   {
  //     //     titleErrorMessage =
  //     //         'تنبيه: مشكلة في البريد الالكتورني او كلمة المرور !!';
  //     //     errorMessage =
  //     //         'يرجى التأكد من كتابة البريد الالكتروني بشكل صحيح وكلمة مرور قوية.';
  //     //   }
  //     //   break;
  //     case AuthStatus.emailAlreadyExists:
  //       // 'The email address is already in use by another account.';
  //       titleErrorMessage = 'تنبيه: مشكلة في صيغة البريد الاكتروني';
  //       errorMessage = ' عنوان البريد الالكتروني موجود مسبقاً.';
  //       break;
  //     default:
  //       // errorMessage = 'An error occured. Please try again later.';
  //       titleErrorMessage = 'تنبيه: هناك مشكلة !!';
  //       errorMessage = 'يرجى المحاولة مرة أخرى لاحقاً.';
  //   }
  //   showMessage(
  //     titleText: titleErrorMessage,
  //     messageText: errorMessage,
  //   );
  //   return errorMessage;
  // }
}
