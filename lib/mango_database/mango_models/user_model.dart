import 'package:realm/realm.dart';

// part 'user_model.g.dart';

@RealmModel()
class _Car {
  @PrimaryKey()
  late final String make;

  late String? model;
  late int? miles;
}
