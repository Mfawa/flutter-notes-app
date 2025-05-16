import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';

part 'category_model.g.dart';

@HiveType(typeId: 1)
class Category extends HiveObject {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final Color color;

  Category(this.name, this.color);
}
