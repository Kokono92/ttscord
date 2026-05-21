import 'package:dart_mappable/dart_mappable.dart';

part 'audio_location.mapper.dart';

@MappableClass()
sealed class AudioLocation with AudioLocationMappable {
  const AudioLocation();
}

@MappableClass()
class AssetLocation extends AudioLocation with AssetLocationMappable {
  final String key;
  const AssetLocation(this.key);
}
