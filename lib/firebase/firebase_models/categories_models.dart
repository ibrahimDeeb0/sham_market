import 'package:cloud_firestore/cloud_firestore.dart';

class CategoriesModels {
  CategoriesModels({
    this.id,
    this.title,
    this.image,
  });
  final String? id;
  final String? title;
  final String? image;

  // ignore: sort_constructors_first
  factory CategoriesModels.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> snapshot,
    // ignore: avoid_unused_constructor_parameters
    // SnapshotOptions? options,
  ) {
    final Map<String, dynamic>? data = snapshot.data();
    return CategoriesModels(
      id: snapshot.id,
      title: data?['title'],
      image: data?['image'],
    );
  }

  Map<String, dynamic> toFirestore() {
    return <String, dynamic>{
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (image != null) 'image': image,
    };
  }
}
