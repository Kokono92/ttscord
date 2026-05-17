// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'triggers.dart';

class TriggerMapper extends ClassMapperBase<Trigger> {
  TriggerMapper._();

  static TriggerMapper? _instance;
  static TriggerMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TriggerMapper._());
      JoinDmCallTriggerMapper.ensureInitialized();
      JoinVoiceChannelTriggerMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Trigger';

  @override
  final MappableFields<Trigger> fields = const {};

  static Trigger _instantiate(DecodingData data) {
    throw MapperException.missingConstructor('Trigger');
  }

  @override
  final Function instantiate = _instantiate;

  static Trigger fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Trigger>(map);
  }

  static Trigger fromJson(String json) {
    return ensureInitialized().decodeJson<Trigger>(json);
  }
}

mixin TriggerMappable {
  String toJson();
  Map<String, dynamic> toMap();
  TriggerCopyWith<Trigger, Trigger, Trigger> get copyWith;
}

abstract class TriggerCopyWith<$R, $In extends Trigger, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call();
  TriggerCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class JoinDmCallTriggerMapper extends SubClassMapperBase<JoinDmCallTrigger> {
  JoinDmCallTriggerMapper._();

  static JoinDmCallTriggerMapper? _instance;
  static JoinDmCallTriggerMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = JoinDmCallTriggerMapper._());
      TriggerMapper.ensureInitialized().addSubMapper(_instance!);
      CharacterReferenceMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'JoinDmCallTrigger';

  static CharacterReference _$character(JoinDmCallTrigger v) => v.character;
  static const Field<JoinDmCallTrigger, CharacterReference> _f$character =
      Field('character', _$character);

  @override
  final MappableFields<JoinDmCallTrigger> fields = const {
    #character: _f$character,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = 'joinDmCall';
  @override
  late final ClassMapperBase superMapper = TriggerMapper.ensureInitialized();

  static JoinDmCallTrigger _instantiate(DecodingData data) {
    return JoinDmCallTrigger(data.dec(_f$character));
  }

  @override
  final Function instantiate = _instantiate;

  static JoinDmCallTrigger fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<JoinDmCallTrigger>(map);
  }

  static JoinDmCallTrigger fromJson(String json) {
    return ensureInitialized().decodeJson<JoinDmCallTrigger>(json);
  }
}

mixin JoinDmCallTriggerMappable {
  String toJson() {
    return JoinDmCallTriggerMapper.ensureInitialized()
        .encodeJson<JoinDmCallTrigger>(this as JoinDmCallTrigger);
  }

  Map<String, dynamic> toMap() {
    return JoinDmCallTriggerMapper.ensureInitialized()
        .encodeMap<JoinDmCallTrigger>(this as JoinDmCallTrigger);
  }

  JoinDmCallTriggerCopyWith<
    JoinDmCallTrigger,
    JoinDmCallTrigger,
    JoinDmCallTrigger
  >
  get copyWith =>
      _JoinDmCallTriggerCopyWithImpl<JoinDmCallTrigger, JoinDmCallTrigger>(
        this as JoinDmCallTrigger,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return JoinDmCallTriggerMapper.ensureInitialized().stringifyValue(
      this as JoinDmCallTrigger,
    );
  }

  @override
  bool operator ==(Object other) {
    return JoinDmCallTriggerMapper.ensureInitialized().equalsValue(
      this as JoinDmCallTrigger,
      other,
    );
  }

  @override
  int get hashCode {
    return JoinDmCallTriggerMapper.ensureInitialized().hashValue(
      this as JoinDmCallTrigger,
    );
  }
}

extension JoinDmCallTriggerValueCopy<$R, $Out>
    on ObjectCopyWith<$R, JoinDmCallTrigger, $Out> {
  JoinDmCallTriggerCopyWith<$R, JoinDmCallTrigger, $Out>
  get $asJoinDmCallTrigger => $base.as(
    (v, t, t2) => _JoinDmCallTriggerCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class JoinDmCallTriggerCopyWith<
  $R,
  $In extends JoinDmCallTrigger,
  $Out
>
    implements TriggerCopyWith<$R, $In, $Out> {
  CharacterReferenceCopyWith<$R, CharacterReference, CharacterReference>
  get character;
  @override
  $R call({CharacterReference? character});
  JoinDmCallTriggerCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _JoinDmCallTriggerCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, JoinDmCallTrigger, $Out>
    implements JoinDmCallTriggerCopyWith<$R, JoinDmCallTrigger, $Out> {
  _JoinDmCallTriggerCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<JoinDmCallTrigger> $mapper =
      JoinDmCallTriggerMapper.ensureInitialized();
  @override
  CharacterReferenceCopyWith<$R, CharacterReference, CharacterReference>
  get character => $value.character.copyWith.$chain((v) => call(character: v));
  @override
  $R call({CharacterReference? character}) =>
      $apply(FieldCopyWithData({if (character != null) #character: character}));
  @override
  JoinDmCallTrigger $make(CopyWithData data) =>
      JoinDmCallTrigger(data.get(#character, or: $value.character));

  @override
  JoinDmCallTriggerCopyWith<$R2, JoinDmCallTrigger, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _JoinDmCallTriggerCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class JoinVoiceChannelTriggerMapper
    extends SubClassMapperBase<JoinVoiceChannelTrigger> {
  JoinVoiceChannelTriggerMapper._();

  static JoinVoiceChannelTriggerMapper? _instance;
  static JoinVoiceChannelTriggerMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(
        _instance = JoinVoiceChannelTriggerMapper._(),
      );
      TriggerMapper.ensureInitialized().addSubMapper(_instance!);
      ChannelReferenceMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'JoinVoiceChannelTrigger';

  static ChannelReference _$channel(JoinVoiceChannelTrigger v) => v.channel;
  static const Field<JoinVoiceChannelTrigger, ChannelReference> _f$channel =
      Field('channel', _$channel);

  @override
  final MappableFields<JoinVoiceChannelTrigger> fields = const {
    #channel: _f$channel,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = "joinVoiceChannel";
  @override
  late final ClassMapperBase superMapper = TriggerMapper.ensureInitialized();

  static JoinVoiceChannelTrigger _instantiate(DecodingData data) {
    return JoinVoiceChannelTrigger(data.dec(_f$channel));
  }

  @override
  final Function instantiate = _instantiate;

  static JoinVoiceChannelTrigger fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<JoinVoiceChannelTrigger>(map);
  }

  static JoinVoiceChannelTrigger fromJson(String json) {
    return ensureInitialized().decodeJson<JoinVoiceChannelTrigger>(json);
  }
}

mixin JoinVoiceChannelTriggerMappable {
  String toJson() {
    return JoinVoiceChannelTriggerMapper.ensureInitialized()
        .encodeJson<JoinVoiceChannelTrigger>(this as JoinVoiceChannelTrigger);
  }

  Map<String, dynamic> toMap() {
    return JoinVoiceChannelTriggerMapper.ensureInitialized()
        .encodeMap<JoinVoiceChannelTrigger>(this as JoinVoiceChannelTrigger);
  }

  JoinVoiceChannelTriggerCopyWith<
    JoinVoiceChannelTrigger,
    JoinVoiceChannelTrigger,
    JoinVoiceChannelTrigger
  >
  get copyWith =>
      _JoinVoiceChannelTriggerCopyWithImpl<
        JoinVoiceChannelTrigger,
        JoinVoiceChannelTrigger
      >(this as JoinVoiceChannelTrigger, $identity, $identity);
  @override
  String toString() {
    return JoinVoiceChannelTriggerMapper.ensureInitialized().stringifyValue(
      this as JoinVoiceChannelTrigger,
    );
  }

  @override
  bool operator ==(Object other) {
    return JoinVoiceChannelTriggerMapper.ensureInitialized().equalsValue(
      this as JoinVoiceChannelTrigger,
      other,
    );
  }

  @override
  int get hashCode {
    return JoinVoiceChannelTriggerMapper.ensureInitialized().hashValue(
      this as JoinVoiceChannelTrigger,
    );
  }
}

extension JoinVoiceChannelTriggerValueCopy<$R, $Out>
    on ObjectCopyWith<$R, JoinVoiceChannelTrigger, $Out> {
  JoinVoiceChannelTriggerCopyWith<$R, JoinVoiceChannelTrigger, $Out>
  get $asJoinVoiceChannelTrigger => $base.as(
    (v, t, t2) => _JoinVoiceChannelTriggerCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class JoinVoiceChannelTriggerCopyWith<
  $R,
  $In extends JoinVoiceChannelTrigger,
  $Out
>
    implements TriggerCopyWith<$R, $In, $Out> {
  ChannelReferenceCopyWith<$R, ChannelReference, ChannelReference> get channel;
  @override
  $R call({ChannelReference? channel});
  JoinVoiceChannelTriggerCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _JoinVoiceChannelTriggerCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, JoinVoiceChannelTrigger, $Out>
    implements
        JoinVoiceChannelTriggerCopyWith<$R, JoinVoiceChannelTrigger, $Out> {
  _JoinVoiceChannelTriggerCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<JoinVoiceChannelTrigger> $mapper =
      JoinVoiceChannelTriggerMapper.ensureInitialized();
  @override
  ChannelReferenceCopyWith<$R, ChannelReference, ChannelReference>
  get channel => $value.channel.copyWith.$chain((v) => call(channel: v));
  @override
  $R call({ChannelReference? channel}) =>
      $apply(FieldCopyWithData({if (channel != null) #channel: channel}));
  @override
  JoinVoiceChannelTrigger $make(CopyWithData data) =>
      JoinVoiceChannelTrigger(data.get(#channel, or: $value.channel));

  @override
  JoinVoiceChannelTriggerCopyWith<$R2, JoinVoiceChannelTrigger, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _JoinVoiceChannelTriggerCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

