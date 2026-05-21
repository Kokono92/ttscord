// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'conversation_target.dart';

class ConversationTargetMapper extends ClassMapperBase<ConversationTarget> {
  ConversationTargetMapper._();

  static ConversationTargetMapper? _instance;
  static ConversationTargetMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ConversationTargetMapper._());
      ChannelConversationTargetMapper.ensureInitialized();
      CharacterConversationTargetMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ConversationTarget';

  @override
  final MappableFields<ConversationTarget> fields = const {};

  static ConversationTarget _instantiate(DecodingData data) {
    throw MapperException.missingConstructor('ConversationTarget');
  }

  @override
  final Function instantiate = _instantiate;

  static ConversationTarget fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ConversationTarget>(map);
  }

  static ConversationTarget fromJson(String json) {
    return ensureInitialized().decodeJson<ConversationTarget>(json);
  }
}

mixin ConversationTargetMappable {
  String toJson();
  Map<String, dynamic> toMap();
  ConversationTargetCopyWith<
    ConversationTarget,
    ConversationTarget,
    ConversationTarget
  >
  get copyWith;
}

abstract class ConversationTargetCopyWith<
  $R,
  $In extends ConversationTarget,
  $Out
>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call();
  ConversationTargetCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class ChannelConversationTargetMapper
    extends ClassMapperBase<ChannelConversationTarget> {
  ChannelConversationTargetMapper._();

  static ChannelConversationTargetMapper? _instance;
  static ChannelConversationTargetMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(
        _instance = ChannelConversationTargetMapper._(),
      );
      ConversationTargetMapper.ensureInitialized();
      ChannelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ChannelConversationTarget';

  static Channel _$channel(ChannelConversationTarget v) => v.channel;
  static const Field<ChannelConversationTarget, Channel> _f$channel = Field(
    'channel',
    _$channel,
  );

  @override
  final MappableFields<ChannelConversationTarget> fields = const {
    #channel: _f$channel,
  };

  static ChannelConversationTarget _instantiate(DecodingData data) {
    return ChannelConversationTarget(data.dec(_f$channel));
  }

  @override
  final Function instantiate = _instantiate;

  static ChannelConversationTarget fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ChannelConversationTarget>(map);
  }

  static ChannelConversationTarget fromJson(String json) {
    return ensureInitialized().decodeJson<ChannelConversationTarget>(json);
  }
}

mixin ChannelConversationTargetMappable {
  String toJson() {
    return ChannelConversationTargetMapper.ensureInitialized()
        .encodeJson<ChannelConversationTarget>(
          this as ChannelConversationTarget,
        );
  }

  Map<String, dynamic> toMap() {
    return ChannelConversationTargetMapper.ensureInitialized()
        .encodeMap<ChannelConversationTarget>(
          this as ChannelConversationTarget,
        );
  }

  ChannelConversationTargetCopyWith<
    ChannelConversationTarget,
    ChannelConversationTarget,
    ChannelConversationTarget
  >
  get copyWith =>
      _ChannelConversationTargetCopyWithImpl<
        ChannelConversationTarget,
        ChannelConversationTarget
      >(this as ChannelConversationTarget, $identity, $identity);
  @override
  String toString() {
    return ChannelConversationTargetMapper.ensureInitialized().stringifyValue(
      this as ChannelConversationTarget,
    );
  }

  @override
  bool operator ==(Object other) {
    return ChannelConversationTargetMapper.ensureInitialized().equalsValue(
      this as ChannelConversationTarget,
      other,
    );
  }

  @override
  int get hashCode {
    return ChannelConversationTargetMapper.ensureInitialized().hashValue(
      this as ChannelConversationTarget,
    );
  }
}

extension ChannelConversationTargetValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ChannelConversationTarget, $Out> {
  ChannelConversationTargetCopyWith<$R, ChannelConversationTarget, $Out>
  get $asChannelConversationTarget => $base.as(
    (v, t, t2) => _ChannelConversationTargetCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class ChannelConversationTargetCopyWith<
  $R,
  $In extends ChannelConversationTarget,
  $Out
>
    implements ConversationTargetCopyWith<$R, $In, $Out> {
  ChannelCopyWith<$R, Channel, Channel> get channel;
  @override
  $R call({Channel? channel});
  ChannelConversationTargetCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _ChannelConversationTargetCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ChannelConversationTarget, $Out>
    implements
        ChannelConversationTargetCopyWith<$R, ChannelConversationTarget, $Out> {
  _ChannelConversationTargetCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ChannelConversationTarget> $mapper =
      ChannelConversationTargetMapper.ensureInitialized();
  @override
  ChannelCopyWith<$R, Channel, Channel> get channel =>
      $value.channel.copyWith.$chain((v) => call(channel: v));
  @override
  $R call({Channel? channel}) =>
      $apply(FieldCopyWithData({if (channel != null) #channel: channel}));
  @override
  ChannelConversationTarget $make(CopyWithData data) =>
      ChannelConversationTarget(data.get(#channel, or: $value.channel));

  @override
  ChannelConversationTargetCopyWith<$R2, ChannelConversationTarget, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _ChannelConversationTargetCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class CharacterConversationTargetMapper
    extends ClassMapperBase<CharacterConversationTarget> {
  CharacterConversationTargetMapper._();

  static CharacterConversationTargetMapper? _instance;
  static CharacterConversationTargetMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(
        _instance = CharacterConversationTargetMapper._(),
      );
      ConversationTargetMapper.ensureInitialized();
      CharacterProfileMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'CharacterConversationTarget';

  static CharacterProfile _$profile(CharacterConversationTarget v) => v.profile;
  static const Field<CharacterConversationTarget, CharacterProfile> _f$profile =
      Field('profile', _$profile);

  @override
  final MappableFields<CharacterConversationTarget> fields = const {
    #profile: _f$profile,
  };

  static CharacterConversationTarget _instantiate(DecodingData data) {
    return CharacterConversationTarget(data.dec(_f$profile));
  }

  @override
  final Function instantiate = _instantiate;

  static CharacterConversationTarget fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CharacterConversationTarget>(map);
  }

  static CharacterConversationTarget fromJson(String json) {
    return ensureInitialized().decodeJson<CharacterConversationTarget>(json);
  }
}

mixin CharacterConversationTargetMappable {
  String toJson() {
    return CharacterConversationTargetMapper.ensureInitialized()
        .encodeJson<CharacterConversationTarget>(
          this as CharacterConversationTarget,
        );
  }

  Map<String, dynamic> toMap() {
    return CharacterConversationTargetMapper.ensureInitialized()
        .encodeMap<CharacterConversationTarget>(
          this as CharacterConversationTarget,
        );
  }

  CharacterConversationTargetCopyWith<
    CharacterConversationTarget,
    CharacterConversationTarget,
    CharacterConversationTarget
  >
  get copyWith =>
      _CharacterConversationTargetCopyWithImpl<
        CharacterConversationTarget,
        CharacterConversationTarget
      >(this as CharacterConversationTarget, $identity, $identity);
  @override
  String toString() {
    return CharacterConversationTargetMapper.ensureInitialized().stringifyValue(
      this as CharacterConversationTarget,
    );
  }

  @override
  bool operator ==(Object other) {
    return CharacterConversationTargetMapper.ensureInitialized().equalsValue(
      this as CharacterConversationTarget,
      other,
    );
  }

  @override
  int get hashCode {
    return CharacterConversationTargetMapper.ensureInitialized().hashValue(
      this as CharacterConversationTarget,
    );
  }
}

extension CharacterConversationTargetValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CharacterConversationTarget, $Out> {
  CharacterConversationTargetCopyWith<$R, CharacterConversationTarget, $Out>
  get $asCharacterConversationTarget => $base.as(
    (v, t, t2) => _CharacterConversationTargetCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class CharacterConversationTargetCopyWith<
  $R,
  $In extends CharacterConversationTarget,
  $Out
>
    implements ConversationTargetCopyWith<$R, $In, $Out> {
  CharacterProfileCopyWith<$R, CharacterProfile, CharacterProfile> get profile;
  @override
  $R call({CharacterProfile? profile});
  CharacterConversationTargetCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _CharacterConversationTargetCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CharacterConversationTarget, $Out>
    implements
        CharacterConversationTargetCopyWith<
          $R,
          CharacterConversationTarget,
          $Out
        > {
  _CharacterConversationTargetCopyWithImpl(
    super.value,
    super.then,
    super.then2,
  );

  @override
  late final ClassMapperBase<CharacterConversationTarget> $mapper =
      CharacterConversationTargetMapper.ensureInitialized();
  @override
  CharacterProfileCopyWith<$R, CharacterProfile, CharacterProfile>
  get profile => $value.profile.copyWith.$chain((v) => call(profile: v));
  @override
  $R call({CharacterProfile? profile}) =>
      $apply(FieldCopyWithData({if (profile != null) #profile: profile}));
  @override
  CharacterConversationTarget $make(CopyWithData data) =>
      CharacterConversationTarget(data.get(#profile, or: $value.profile));

  @override
  CharacterConversationTargetCopyWith<$R2, CharacterConversationTarget, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _CharacterConversationTargetCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

