// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'audio_location.dart';

class AudioLocationMapper extends ClassMapperBase<AudioLocation> {
  AudioLocationMapper._();

  static AudioLocationMapper? _instance;
  static AudioLocationMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AudioLocationMapper._());
      AssetLocationMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'AudioLocation';

  @override
  final MappableFields<AudioLocation> fields = const {};

  static AudioLocation _instantiate(DecodingData data) {
    throw MapperException.missingConstructor('AudioLocation');
  }

  @override
  final Function instantiate = _instantiate;

  static AudioLocation fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<AudioLocation>(map);
  }

  static AudioLocation fromJson(String json) {
    return ensureInitialized().decodeJson<AudioLocation>(json);
  }
}

mixin AudioLocationMappable {
  String toJson();
  Map<String, dynamic> toMap();
  AudioLocationCopyWith<AudioLocation, AudioLocation, AudioLocation>
  get copyWith;
}

abstract class AudioLocationCopyWith<$R, $In extends AudioLocation, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call();
  AudioLocationCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class AssetLocationMapper extends ClassMapperBase<AssetLocation> {
  AssetLocationMapper._();

  static AssetLocationMapper? _instance;
  static AssetLocationMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AssetLocationMapper._());
      AudioLocationMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'AssetLocation';

  static String _$key(AssetLocation v) => v.key;
  static const Field<AssetLocation, String> _f$key = Field('key', _$key);

  @override
  final MappableFields<AssetLocation> fields = const {#key: _f$key};

  static AssetLocation _instantiate(DecodingData data) {
    return AssetLocation(data.dec(_f$key));
  }

  @override
  final Function instantiate = _instantiate;

  static AssetLocation fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<AssetLocation>(map);
  }

  static AssetLocation fromJson(String json) {
    return ensureInitialized().decodeJson<AssetLocation>(json);
  }
}

mixin AssetLocationMappable {
  String toJson() {
    return AssetLocationMapper.ensureInitialized().encodeJson<AssetLocation>(
      this as AssetLocation,
    );
  }

  Map<String, dynamic> toMap() {
    return AssetLocationMapper.ensureInitialized().encodeMap<AssetLocation>(
      this as AssetLocation,
    );
  }

  AssetLocationCopyWith<AssetLocation, AssetLocation, AssetLocation>
  get copyWith => _AssetLocationCopyWithImpl<AssetLocation, AssetLocation>(
    this as AssetLocation,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return AssetLocationMapper.ensureInitialized().stringifyValue(
      this as AssetLocation,
    );
  }

  @override
  bool operator ==(Object other) {
    return AssetLocationMapper.ensureInitialized().equalsValue(
      this as AssetLocation,
      other,
    );
  }

  @override
  int get hashCode {
    return AssetLocationMapper.ensureInitialized().hashValue(
      this as AssetLocation,
    );
  }
}

extension AssetLocationValueCopy<$R, $Out>
    on ObjectCopyWith<$R, AssetLocation, $Out> {
  AssetLocationCopyWith<$R, AssetLocation, $Out> get $asAssetLocation =>
      $base.as((v, t, t2) => _AssetLocationCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class AssetLocationCopyWith<$R, $In extends AssetLocation, $Out>
    implements AudioLocationCopyWith<$R, $In, $Out> {
  @override
  $R call({String? key});
  AssetLocationCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _AssetLocationCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, AssetLocation, $Out>
    implements AssetLocationCopyWith<$R, AssetLocation, $Out> {
  _AssetLocationCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<AssetLocation> $mapper =
      AssetLocationMapper.ensureInitialized();
  @override
  $R call({String? key}) =>
      $apply(FieldCopyWithData({if (key != null) #key: key}));
  @override
  AssetLocation $make(CopyWithData data) =>
      AssetLocation(data.get(#key, or: $value.key));

  @override
  AssetLocationCopyWith<$R2, AssetLocation, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _AssetLocationCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

