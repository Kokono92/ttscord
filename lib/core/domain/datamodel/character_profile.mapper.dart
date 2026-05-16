// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'character_profile.dart';

class CharacterProfileMapper extends ClassMapperBase<CharacterProfile> {
  CharacterProfileMapper._();

  static CharacterProfileMapper? _instance;
  static CharacterProfileMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CharacterProfileMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'CharacterProfile';

  static String _$name(CharacterProfile v) => v.name;
  static const Field<CharacterProfile, String> _f$name = Field('name', _$name);
  static String? _$iconPath(CharacterProfile v) => v.iconPath;
  static const Field<CharacterProfile, String> _f$iconPath = Field(
    'iconPath',
    _$iconPath,
    opt: true,
  );
  static bool _$isMicMuted(CharacterProfile v) => v.isMicMuted;
  static const Field<CharacterProfile, bool> _f$isMicMuted = Field(
    'isMicMuted',
    _$isMicMuted,
    opt: true,
    def: false,
  );
  static bool _$isSpeakerMuted(CharacterProfile v) => v.isSpeakerMuted;
  static const Field<CharacterProfile, bool> _f$isSpeakerMuted = Field(
    'isSpeakerMuted',
    _$isSpeakerMuted,
    opt: true,
    def: false,
  );

  @override
  final MappableFields<CharacterProfile> fields = const {
    #name: _f$name,
    #iconPath: _f$iconPath,
    #isMicMuted: _f$isMicMuted,
    #isSpeakerMuted: _f$isSpeakerMuted,
  };

  static CharacterProfile _instantiate(DecodingData data) {
    return CharacterProfile(
      name: data.dec(_f$name),
      iconPath: data.dec(_f$iconPath),
      isMicMuted: data.dec(_f$isMicMuted),
      isSpeakerMuted: data.dec(_f$isSpeakerMuted),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static CharacterProfile fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CharacterProfile>(map);
  }

  static CharacterProfile fromJson(String json) {
    return ensureInitialized().decodeJson<CharacterProfile>(json);
  }
}

mixin CharacterProfileMappable {
  String toJson() {
    return CharacterProfileMapper.ensureInitialized()
        .encodeJson<CharacterProfile>(this as CharacterProfile);
  }

  Map<String, dynamic> toMap() {
    return CharacterProfileMapper.ensureInitialized()
        .encodeMap<CharacterProfile>(this as CharacterProfile);
  }

  CharacterProfileCopyWith<CharacterProfile, CharacterProfile, CharacterProfile>
  get copyWith =>
      _CharacterProfileCopyWithImpl<CharacterProfile, CharacterProfile>(
        this as CharacterProfile,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return CharacterProfileMapper.ensureInitialized().stringifyValue(
      this as CharacterProfile,
    );
  }

  @override
  bool operator ==(Object other) {
    return CharacterProfileMapper.ensureInitialized().equalsValue(
      this as CharacterProfile,
      other,
    );
  }

  @override
  int get hashCode {
    return CharacterProfileMapper.ensureInitialized().hashValue(
      this as CharacterProfile,
    );
  }
}

extension CharacterProfileValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CharacterProfile, $Out> {
  CharacterProfileCopyWith<$R, CharacterProfile, $Out>
  get $asCharacterProfile =>
      $base.as((v, t, t2) => _CharacterProfileCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class CharacterProfileCopyWith<$R, $In extends CharacterProfile, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    String? name,
    String? iconPath,
    bool? isMicMuted,
    bool? isSpeakerMuted,
  });
  CharacterProfileCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _CharacterProfileCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CharacterProfile, $Out>
    implements CharacterProfileCopyWith<$R, CharacterProfile, $Out> {
  _CharacterProfileCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CharacterProfile> $mapper =
      CharacterProfileMapper.ensureInitialized();
  @override
  $R call({
    String? name,
    Object? iconPath = $none,
    bool? isMicMuted,
    bool? isSpeakerMuted,
  }) => $apply(
    FieldCopyWithData({
      if (name != null) #name: name,
      if (iconPath != $none) #iconPath: iconPath,
      if (isMicMuted != null) #isMicMuted: isMicMuted,
      if (isSpeakerMuted != null) #isSpeakerMuted: isSpeakerMuted,
    }),
  );
  @override
  CharacterProfile $make(CopyWithData data) => CharacterProfile(
    name: data.get(#name, or: $value.name),
    iconPath: data.get(#iconPath, or: $value.iconPath),
    isMicMuted: data.get(#isMicMuted, or: $value.isMicMuted),
    isSpeakerMuted: data.get(#isSpeakerMuted, or: $value.isSpeakerMuted),
  );

  @override
  CharacterProfileCopyWith<$R2, CharacterProfile, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _CharacterProfileCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

