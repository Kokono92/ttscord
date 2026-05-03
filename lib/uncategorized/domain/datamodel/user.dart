import 'package:dart_mappable/dart_mappable.dart';

part 'user.mapper.dart';

@MappableClass()
class User with UserMappable {
  final String name;
  final String? iconPath;

  const User({required this.name, this.iconPath});
}
