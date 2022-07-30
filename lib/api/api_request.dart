// import 'package:dio/dio.dart';

// import '../general_exports.dart';

// class ApiRequest {
//   ApiRequest({
//     @required this.path,
//     @required this.method,
//     @required this.className,
//     this.body,
//     this.queryParameters,
//     this.formatResponse = false,
//     this.withLoading = false,
//     this.shouldShowMessage = true,
//   });

//   final MyAppController _myAppController = Get.find<MyAppController>();
//   final String? path;
//   final String? method;
//   final String? className;
//   String authorization() => _myAppController.userData != null
//       ? 'Bearer ${_myAppController.userData['token']}'
//       : '';
//   final bool withLoading;
//   final bool formatResponse;
//   final bool shouldShowMessage;
//   final dynamic body;
//   final dynamic queryParameters;
//   dynamic response;

//   Dio _dio() {
//     // Put your authorization token here
//     return Dio(
//       BaseOptions(
//         headers: <String, dynamic>{
//           'Authorization': authorization(),
//           'Content-Type': 'application/json',
//           'Accept': 'application/json',
//           'Accept-Language': Get.find<AppLanguageController>().appLocale,
//         },
//       ),
//     );
//   }

//   Future<void> request({
//     Function()? beforeSend,
//     Function(dynamic data, dynamic response)? onSuccess,
//     Function(dynamic error)? onError,
//   }) async {
//     // start request time
//     final DateTime startTime = DateTime.now();

//     try {
//       if (withLoading) {
//         startLoading();
//       }
//       // check method type
//       switch (method) {
//         case getMethod:
//           response = await _dio()
//               .get(baseUrl + path!, queryParameters: queryParameters);

//           break;
//         case postMethod:
//           response = await _dio().post(
//             baseUrl + path!,
//             data: body,
//             queryParameters: queryParameters,
//           );
//           break;
//         case putMethod:
//           response = await _dio().put(
//             baseUrl + path!,
//             data: body,
//             queryParameters: queryParameters,
//           );
//           break;
//         case deleteMethod:
//           response = await _dio().delete(
//             baseUrl + path!,
//             data: body,
//             queryParameters: queryParameters,
//           );
//           break;
//       }
//       // request time
//       final int time = DateTime.now().difference(startTime).inMilliseconds;
//       // print response data in console
//       showRequestDetails(
//         method: method,
//         path: path,
//         formatResponse: formatResponse,
//         className: className,
//         body: body.toString(),
//         headers: _dio().options.headers,
//         queryParameters: queryParameters.toString(),
//         response: response.data,
//         time: time,
//       );

//       if (withLoading) {
//         dismissLoading();
//       }

//       if (onSuccess != null) {
//         onSuccess(response.data['data'], response.data);
//       }
//     } on Exception catch (error) {
//       dismissLoading();
//       // request time
//       final int time = DateTime.now().difference(startTime).inMilliseconds;

//       if (error is DioError) {
//         final dynamic errorData = error.response?.data ??
//             <String, dynamic>{
//               'errors': <Map<String, String>>[
//                 <String, String>{'message': 'Un handled Error'}
//               ]
//             };
//         // print response error
//         showRequestDetails(
//           method: method,
//           path: path,
//           formatResponse: formatResponse,
//           className: className,
//           body: body.toString(),
//           headers: _dio().options.headers,
//           queryParameters: queryParameters.toString(),
//           response: errorData,
//           time: time,
//           isError: true,
//         );

//         //handle DioError here by error type or by error code
//         if (shouldShowMessage) {
//           showMessage(
//             description:
//                 errorData['errors'] != null && errorData['errors'].length > 0
//                     ? errorData['errors'][0]['message']
//                     : errorData['message'],
//             textColor: COMMON_RED_COLOR,
//           );
//         }

//         if (onError != null) {
//           onError(errorData);
//         }
//       } else {
//         // handle another errors
//         showRequestDetails(
//           method: method,
//           path: path,
//           formatResponse: formatResponse,
//           className: className,
//           body: body.toString(),
//           headers: _dio().options.headers,
//           queryParameters: queryParameters.toString(),
//           response: error,
//           time: time,
//           isError: true,
//           otherCatch: true,
//         );
//       }
//     }
//   }
// }
