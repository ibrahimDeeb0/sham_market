import 'package:cloud_firestore/cloud_firestore.dart';
import '../../general_exports.dart';

class CategoriesController extends GetxController {
  // @override
  // void onInit() {
  //   super.onInit();
  //   getCategoriesData();
  // }

  final FirebaseFirestore _db = FirebaseFirestore.instance;
  final String _nameCollection = 'categories';
  final List<CategoriesModels> categoryList = <CategoriesModels>[];
  bool isLoading = true;

  @override
  void onReady() {
    super.onReady();
    getCategoriesData();
    getAllCategoriesList();
  }

  Future<List<CategoriesModels>> getCategoriesData() async {
    final CollectionReference<Map<String, dynamic>> categoryRef =
        _db.collection(_nameCollection);
    final QuerySnapshot<Map<String, dynamic>> responseBody =
        await categoryRef.get();

    final List<QueryDocumentSnapshot<Map<String, dynamic>>> jsonListCategory =
        responseBody.docs;

    final List<CategoriesModels> getCategoryData =
        jsonListCategory.map((QueryDocumentSnapshot<Map<String, dynamic>> e) {
      //consoleLog('jsonCategory: ${e.data()}');
      return CategoriesModels.fromFirestore(e);
    }).toList();

    return getCategoryData;
  }

  Future<void> getAllCategoriesList() async {
    final List<CategoriesModels> getCategoryData = await getCategoriesData();
    categoryList.addAll(getCategoryData);
    isLoading = false;
    update();
    // consoleLog('categoryList: $categoryList');
  }
}

/*

void getAllProductsList() async {
    ProductRepository(ProductServices())
        .getAllProductsList()
        .then((productsObj) {
      isLoading.value = false;
      productList.addAll(productsObj);
    }).catchError((onError) {
      isLoading.value = false;
      print(" There was Error in 'product_controller' ==>  $onError ");
    });
  }

*/

/*


    if (categoryList.isEmpty) {
      isLoading = true;
    } else {
      isLoading = false;
    }
    consoleLog(categoryList.length);


    for (final QueryDocumentSnapshot<Map<String, dynamic>> jsonCategory
        in jsonListCategory) {
      final CategoriesModels category =
          CategoriesModels.fromFirestore(jsonCategory);
      categoryList.add(category);
      consoleLog(category.title);
    }
*/
