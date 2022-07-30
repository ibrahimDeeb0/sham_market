// import 'package:cloud_firestore/cloud_firestore.dart';
import '../../general_exports.dart';

class TestScreenController extends GetxController {
  @override
  void onInit() {
    // getData();
    super.onInit();
  }
}

/*
   // FirebaseFirestore firestore = FirebaseFirestore.instance;
  final FirebaseFirestore db = FirebaseFirestore.instance;

  String nameCollection = 'users';

  List<Map<String, dynamic>> localListusers = <Map<String, dynamic>>[];

  Future<void> getData() async {
    final CollectionReference<Map<String, dynamic>> userRef =
        db.collection(nameCollection);
    final QuerySnapshot<Map<String, dynamic>> responseBody =
        await userRef.get();

    final List<QueryDocumentSnapshot<Map<String, dynamic>>> jsonListUsers =
        responseBody.docs;

    for (QueryDocumentSnapshot<Map<String, dynamic>> element in jsonListUsers) {
      localListusers.add(element.data());
    }

    consoleLog('local List users => $localListusers');

    update();

    // consoleLog('list Users => $jsonListUsers');
  }

  //? Create a new user with a first and last name
  final Map<String, dynamic> user1 = <String, dynamic>{
    'first': 'Yazan',
    'last': 'Deeb',
    'born': 1999,
    'adress': <String, Object>{
      'city': 'gaza',
      'zip Number': 00972,
    },
  };
*/
