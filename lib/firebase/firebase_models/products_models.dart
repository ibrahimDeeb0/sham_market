import 'package:cloud_firestore/cloud_firestore.dart';

class ProductsModels {
  ProductsModels({
    this.id,
    this.productName,
    this.productImage,
    this.productPrice,
  });
  final String? id;
  final String? productName;
  final String? productImage;
  final String? productPrice;

  // ignore: sort_constructors_first
  factory ProductsModels.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> snapshot,
    // ignore: avoid_unused_constructor_parameters
    // SnapshotOptions? options,
  ) {
    final Map<String, dynamic>? data = snapshot.data();
    return ProductsModels(
      id: snapshot.id,
      productName: data?['productName'],
      productImage: data?['productImage'],
      productPrice: data?['productPrice'],
    );
  }

  Map<String, dynamic> toFirestore() {
    return <String, dynamic>{
      if (id != null) 'id': id,
      if (productName != null) 'productName': productName,
      if (productImage != null) 'productImage': productImage,
      if (productPrice != null) 'productPrice': productPrice,
    };
  }
}
