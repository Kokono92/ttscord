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
      UserConversationTargetMapper.ensureInitialized();
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

class UserConversationTargetMapper
    extends ClassMapperBase<UserConversationTarget> {
  UserConversationTargetMapper._();

  static UserConversationTargetMapper? _instance;
  static UserConversationTargetMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = UserConversationTargetMapper._());
      ConversationTargetMapper.ensureInitialized();
      CharacterProfileMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'UserConversationTarget';

  static CharacterProfile _$user(UserConversationTarget v) => v.user;
  static const Field<UserConversationTarget, CharacterProfile> _f$user = Field(
    'user',
    _$user,
  );

  @override
  final MappableFields<UserConversationTarget> fields = const {#user: _f$user};

  static UserConversationTarget _instantiate(DecodingData data) {
    return UserConversationTarget(data.dec(_f$user));
  }

  @override
  final Function instantiate = _instantiate;

  static UserConversationTarget fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<UserConversationTarget>(map);
  }

  static UserConversationTarget fromJson(String json) {
    return ensureInitialized().decodeJson<UserConversationTarget>(json);
  }
}

mixin UserConversationTargetMappable {
  String toJson() {
    return UserConversationTargetMapper.ensureInitialized()
        .encodeJson<UserConversationTarget>(this as UserConversationTarget);
  }

  Map<String, dynamic> toMap() {
    return UserConversationTargetMapper.ensureInitialized()
        .encodeMap<UserConversationTarget>(this as UserConversationTarget);
  }

  UserConversationTargetCopyWith<
    UserConversationTarget,
    UserConversationTarget,
    UserConversationTarget
  >
  get copyWith =>
      _UserConversationTargetCopyWithImpl<
        UserConversationTarget,
        UserConversationTarget
      >(this as UserConversationTarget, $identity, $identity);
  @override
  String toString() {
    return UserConversationTargetMapper.ensureInitialized().stringifyValue(
      this as UserConversationTarget,
    );
  }

  @override
  bool operator ==(Object other) {
    return UserConversationTargetMapper.ensureInitialized().equalsValue(
      this as UserConversationTarget,
      other,
    );
  }

  @override
  int get hashCode {
    return UserConversationTargetMapper.ensureInitialized().hashValue(
      this as UserConversationTarget,
    );
  }
}

extension UserConversationTargetValueCopy<$R, $Out>
    on ObjectCopyWith<$R, UserConversationTarget, $Out> {
  UserConversationTargetCopyWith<$R, UserConversationTarget, $Out>
  get $asUserConversationTarget => $base.as(
    (v, t, t2) => _UserConversationTargetCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class UserConversationTargetCopyWith<
  $R,
  $In extends UserConversationTarget,
  $Out
>
    implements ConversationTargetCopyWith<$R, $In, $Out> {
  CharacterProfileCopyWith<$R, CharacterProfile, CharacterProfile> get user;
  @override
  $R call({CharacterProfile? user});
  UserConversationTargetCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _UserConversationTargetCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, UserConversationTarget, $Out>
    implements
        UserConversationTargetCopyWith<$R, UserConversationTarget, $Out> {
  _UserConversationTargetCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<UserConversationTarget> $mapper =
      UserConversationTargetMapper.ensureInitialized();
  @override
  CharacterProfileCopyWith<$R, CharacterProfile, CharacterProfile> get user =>
      $value.user.copyWith.$chain((v) => call(user: v));
  @override
  $R call({CharacterProfile? user}) =>
      $apply(FieldCopyWithData({if (user != null) #user: user}));
  @override
  UserConversationTarget $make(CopyWithData data) =>
      UserConversationTarget(data.get(#user, or: $value.user));

  @override
  UserConversationTargetCopyWith<$R2, UserConversationTarget, $Out2>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _UserConversationTargetCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

