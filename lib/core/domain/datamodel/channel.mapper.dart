// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'channel.dart';

class ChannelTypeMapper extends EnumMapper<ChannelType> {
  ChannelTypeMapper._();

  static ChannelTypeMapper? _instance;
  static ChannelTypeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ChannelTypeMapper._());
    }
    return _instance!;
  }

  static ChannelType fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  ChannelType decode(dynamic value) {
    switch (value) {
      case r'text':
        return ChannelType.text;
      case r'voice':
        return ChannelType.voice;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(ChannelType self) {
    switch (self) {
      case ChannelType.text:
        return r'text';
      case ChannelType.voice:
        return r'voice';
    }
  }
}

extension ChannelTypeMapperExtension on ChannelType {
  String toValue() {
    ChannelTypeMapper.ensureInitialized();
    return MapperContainer.globals.toValue<ChannelType>(this) as String;
  }
}

class ChannelMapper extends ClassMapperBase<Channel> {
  ChannelMapper._();

  static ChannelMapper? _instance;
  static ChannelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ChannelMapper._());
      ChannelTypeMapper.ensureInitialized();
      CharacterProfileMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Channel';

  static String _$name(Channel v) => v.name;
  static const Field<Channel, String> _f$name = Field('name', _$name);
  static ChannelType _$type(Channel v) => v.type;
  static const Field<Channel, ChannelType> _f$type = Field('type', _$type);
  static int? _$categoryId(Channel v) => v.categoryId;
  static const Field<Channel, int> _f$categoryId = Field(
    'categoryId',
    _$categoryId,
    opt: true,
  );
  static List<CharacterProfile> _$joiningUsers(Channel v) => v.joiningUsers;
  static const Field<Channel, List<CharacterProfile>> _f$joiningUsers = Field(
    'joiningUsers',
    _$joiningUsers,
    opt: true,
    def: const [],
  );

  @override
  final MappableFields<Channel> fields = const {
    #name: _f$name,
    #type: _f$type,
    #categoryId: _f$categoryId,
    #joiningUsers: _f$joiningUsers,
  };

  static Channel _instantiate(DecodingData data) {
    return Channel(
      name: data.dec(_f$name),
      type: data.dec(_f$type),
      categoryId: data.dec(_f$categoryId),
      joiningUsers: data.dec(_f$joiningUsers),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Channel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Channel>(map);
  }

  static Channel fromJson(String json) {
    return ensureInitialized().decodeJson<Channel>(json);
  }
}

mixin ChannelMappable {
  String toJson() {
    return ChannelMapper.ensureInitialized().encodeJson<Channel>(
      this as Channel,
    );
  }

  Map<String, dynamic> toMap() {
    return ChannelMapper.ensureInitialized().encodeMap<Channel>(
      this as Channel,
    );
  }

  ChannelCopyWith<Channel, Channel, Channel> get copyWith =>
      _ChannelCopyWithImpl<Channel, Channel>(
        this as Channel,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ChannelMapper.ensureInitialized().stringifyValue(this as Channel);
  }

  @override
  bool operator ==(Object other) {
    return ChannelMapper.ensureInitialized().equalsValue(
      this as Channel,
      other,
    );
  }

  @override
  int get hashCode {
    return ChannelMapper.ensureInitialized().hashValue(this as Channel);
  }
}

extension ChannelValueCopy<$R, $Out> on ObjectCopyWith<$R, Channel, $Out> {
  ChannelCopyWith<$R, Channel, $Out> get $asChannel =>
      $base.as((v, t, t2) => _ChannelCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ChannelCopyWith<$R, $In extends Channel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
    $R,
    CharacterProfile,
    CharacterProfileCopyWith<$R, CharacterProfile, CharacterProfile>
  >
  get joiningUsers;
  $R call({
    String? name,
    ChannelType? type,
    int? categoryId,
    List<CharacterProfile>? joiningUsers,
  });
  ChannelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ChannelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Channel, $Out>
    implements ChannelCopyWith<$R, Channel, $Out> {
  _ChannelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Channel> $mapper =
      ChannelMapper.ensureInitialized();
  @override
  ListCopyWith<
    $R,
    CharacterProfile,
    CharacterProfileCopyWith<$R, CharacterProfile, CharacterProfile>
  >
  get joiningUsers => ListCopyWith(
    $value.joiningUsers,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(joiningUsers: v),
  );
  @override
  $R call({
    String? name,
    ChannelType? type,
    Object? categoryId = $none,
    List<CharacterProfile>? joiningUsers,
  }) => $apply(
    FieldCopyWithData({
      if (name != null) #name: name,
      if (type != null) #type: type,
      if (categoryId != $none) #categoryId: categoryId,
      if (joiningUsers != null) #joiningUsers: joiningUsers,
    }),
  );
  @override
  Channel $make(CopyWithData data) => Channel(
    name: data.get(#name, or: $value.name),
    type: data.get(#type, or: $value.type),
    categoryId: data.get(#categoryId, or: $value.categoryId),
    joiningUsers: data.get(#joiningUsers, or: $value.joiningUsers),
  );

  @override
  ChannelCopyWith<$R2, Channel, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _ChannelCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

