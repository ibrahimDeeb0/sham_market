import '../constants/index.dart';

const String baseUrl = developmentMode
    ? 'https://twinadev.jigsawme.io/api/v1'
    : 'production api url';

// *************** Api body keys ****************

const String apiUserData = 'user_data';
const String keyMobileNumber = 'mobile_number';
const String keyUserName = 'username';
const String keyMobileCode = 'mobile_code';
const String keyDateBirth = 'date_of_birth';
const String keyCategories = 'delivery_methods';
const String keyGender = 'gender';
const String keyFirstName = 'first_name';
const String keyLastName = 'last_name';
const String keyOTP = 'otp';
const String fcmToken = 'fcm_token';
const String keyIsCompleted = 'is_completed';
const String uiTitle = 'ui_title';
const String uiSubtitle = 'ui_subtitle';
const String uiButton = 'ui_button';
const String uiChoiceSentience = 'ui_choice_sentince';
const String keyName = 'name';
const String keyDescription = 'description';
const String keyImage = 'image';
const String keyCode = 'code';
const String keyGeneralData = 'general_data';
const String keyLanguages = 'languages';
const String keyStatus = 'status';
const String keyTitle = 'title';
const String keyLatitude = 'latitude';
const String keyLongitude = 'longitude';
const String keyFullAddress = 'full_address';
const String keyIsPreferred = 'is_preferred';
const String keyId = 'id';
// *************** Response Result ***************

const String success = 'success';
const String code = 'code';
const String message = 'message';
const String data = 'data';

// *************** Category Codes ***************

const String categoryPickUp = 'Pick up';
const String categoryDelivery = 'Delivery';
const String categoryBooking = 'Booking';
