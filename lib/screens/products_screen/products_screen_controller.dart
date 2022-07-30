import 'package:cloud_firestore/cloud_firestore.dart';
import '../../general_exports.dart';

class ProductsScreenController extends GetxController {
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  final String _nameCollection = 'categories'; // 'productsC01'
  final List<ProductsModels> productList = <ProductsModels>[];
  bool isLoading = true;

  @override
  void onInit() {
    super.onInit();
    getProductServices();
    getAllProductsRepository();
    // getAllProductsData();
  }

// -------------------------------getProductServices---------------------------//
  Future<QuerySnapshot<Map<String, dynamic>>> getProductServices() async {
    final QuerySnapshot<Map<String, dynamic>> responseBody =
        await _db.collection(_nameCollection).get();

    return responseBody;
  }

// -------------------------------getAllProductsRepository---------------------//

  Future<void> getAllProductsRepository() async {
    ProductsModels product = ProductsModels();
    getProductServices().then(
      (QuerySnapshot<Map<String, dynamic>> responseBody) {
        for (QueryDocumentSnapshot<Map<String, dynamic>> e
            in responseBody.docs) {
          product = ProductsModels.fromFirestore(e);
          productList.add(product);
          // ProductsModels.fromFirestore(e);
          consoleLog('jsonCategory: ${e.data()}');
        }
        isLoading = false;
        consoleLog('productList: ${productList.length}');
      },
    );
    update();
  }

  // Future<void> getAllProductsData() async {
  //   final ProductsModels getProductData = await getAllProductsRepository();
  //   productList.add(getProductData);
  //   isLoading = false;
  //   update();
  //   consoleLog('productList: ${productList[0].productName}');
  // }

// ------------------------------getAllProductsData----------------------------//
  // Future<void> getAllProductsData() async {
  //   getAllProductsRepository().then((dynamic value) {
  //     final Future<dynamic> getCategoryData = getAllProductsRepository();
  //     productList.addAll(getCategoryData);
  //     isLoading = false;
  //     update();
  //   }).catchError((dynamic onError) {
  //     isLoading = false;
  //     consoleLog(" There was Error in 'product_controller' ==>  $onError ");
  //   });
  // }
}
