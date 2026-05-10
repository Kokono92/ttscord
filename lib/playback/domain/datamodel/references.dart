import 'package:dart_mappable/dart_mappable.dart';

part 'references.mapper.dart';

abstract interface class Referrer {
  Set<Reference> get references;
}

@MappableClass()
sealed class Reference with ReferenceMappable {
  const Reference();
}

@MappableClass(discriminatorValue: "character")
class CharacterReference extends Reference with CharacterReferenceMappable {
  final String identifier;

  const CharacterReference(this.identifier);
}

@MappableClass(discriminatorValue: "channel")
class ChannelReference extends Reference with ChannelReferenceMappable {
  final String serverIdentifier;
  final String channelIdentifier;

  const ChannelReference(this.serverIdentifier, this.channelIdentifier);
}
