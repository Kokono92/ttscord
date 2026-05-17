import 'package:dart_mappable/dart_mappable.dart';

part 'image_source.mapper.dart';

@MappableClass()
class ImageSource with ImageSourceMappable {
  final String identifier;
  final String format;

  const ImageSource({required this.identifier, required this.format});
}
