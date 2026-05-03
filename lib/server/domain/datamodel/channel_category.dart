import 'package:dart_mappable/dart_mappable.dart';

part 'channel_category.mapper.dart';

@MappableClass()
class ChannelCategory with ChannelCategoryMappable {
  final String name;
  final int id;

  const ChannelCategory({required this.name, required this.id});
}
