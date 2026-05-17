import 'package:dart_mappable/dart_mappable.dart';
import 'package:ttscord/core/domain/datamodel/references.dart';

part 'triggers.mapper.dart';

@MappableClass()
sealed class Trigger with TriggerMappable {
  const Trigger();
}

@MappableClass(discriminatorValue: 'joinDmCall')
class JoinDmCallTrigger extends Trigger
    with JoinDmCallTriggerMappable
    implements Referrer {
  final CharacterReference character;

  const JoinDmCallTrigger(this.character);

  @override
  Set<Reference> get references => {character};
}

@MappableClass(discriminatorValue: "joinVoiceChannel")
class JoinVoiceChannelTrigger extends Trigger
    with JoinVoiceChannelTriggerMappable
    implements Referrer {
  final ChannelReference channel;

  const JoinVoiceChannelTrigger(this.channel);

  @override
  Set<Reference> get references => {channel};
}
