// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'references.dart';

class ReferenceMapper extends ClassMapperBase<Reference> {
  ReferenceMapper._();

  static ReferenceMapper? _instance;
  static ReferenceMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ReferenceMapper._());
      CharacterReferenceMapper.ensureInitialized();
      ChannelReferenceMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Reference';

  @override
  final MappableFields<Reference> fields = const {};

  static Reference _instantiate(DecodingData data) {
    throw MapperException.missingConstructor('Reference');
  }

  @override
  final Function instantiate = _instantiate;

  static Reference fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Reference>(map);
  }

  static Reference fromJson(String json) {
    return ensureInitialized().decodeJson<Reference>(json);
  }
}

mixin ReferenceMappable {
  String toJson();
  Map<String, dynamic> toMap();
  ReferenceCopyWith<Reference, Reference, Reference> get copyWith;
}

abstract class ReferenceCopyWith<$R, $In extends Reference, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call();
  ReferenceCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class CharacterReferenceMapper extends SubClassMapperBase<CharacterReference> {
  CharacterReferenceMapper._();

  static CharacterReferenceMapper? _instance;
  static CharacterReferenceMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CharacterReferenceMapper._());
      ReferenceMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'CharacterReference';

  static String _$identifier(CharacterReference v) => v.identifier;
  static const Field<CharacterReference, String> _f$identifier = Field(
    'identifier',
    _$identifier,
  );

  @override
  final MappableFields<CharacterReference> fields = const {
    #identifier: _f$identifier,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = "character";
  @override
  late final ClassMapperBase superMapper = ReferenceMapper.ensureInitialized();

  static CharacterReference _instantiate(DecodingData data) {
    return CharacterReference(data.dec(_f$identifier));
  }

  @override
  final Function instantiate = _instantiate;

  static CharacterReference fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CharacterReference>(map);
  }

  static CharacterReference fromJson(String json) {
    return ensureInitialized().decodeJson<CharacterReference>(json);
  }
}

mixin CharacterReferenceMappable {
  String toJson() {
    return CharacterReferenceMapper.ensureInitialized()
        .encodeJson<CharacterReference>(this as CharacterReference);
  }

  Map<String, dynamic> toMap() {
    return CharacterReferenceMapper.ensureInitialized()
        .encodeMap<CharacterReference>(this as CharacterReference);
  }

  CharacterReferenceCopyWith<
    CharacterReference,
    CharacterReference,
    CharacterReference
  >
  get copyWith =>
      _CharacterReferenceCopyWithImpl<CharacterReference, CharacterReference>(
        this as CharacterReference,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return CharacterReferenceMapper.ensureInitialized().stringifyValue(
      this as CharacterReference,
    );
  }

  @override
  bool operator ==(Object other) {
    return CharacterReferenceMapper.ensureInitialized().equalsValue(
      this as CharacterReference,
      other,
    );
  }

  @override
  int get hashCode {
    return CharacterReferenceMapper.ensureInitialized().hashValue(
      this as CharacterReference,
    );
  }
}

extension CharacterReferenceValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CharacterReference, $Out> {
  CharacterReferenceCopyWith<$R, CharacterReference, $Out>
  get $asCharacterReference => $base.as(
    (v, t, t2) => _CharacterReferenceCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class CharacterReferenceCopyWith<
  $R,
  $In extends CharacterReference,
  $Out
>
    implements ReferenceCopyWith<$R, $In, $Out> {
  @override
  $R call({String? identifier});
  CharacterReferenceCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _CharacterReferenceCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CharacterReference, $Out>
    implements CharacterReferenceCopyWith<$R, CharacterReference, $Out> {
  _CharacterReferenceCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CharacterReference> $mapper =
      CharacterReferenceMapper.ensureInitialized();
  @override
  $R call({String? identifier}) => $apply(
    FieldCopyWithData({if (identifier != null) #identifier: identifier}),
  );
  @override
  CharacterReference $make(CopyWithData data) =>
      CharacterReference(data.get(#identifier, or: $value.identifier));

  @override
  CharacterReferenceCopyWith<$R2, CharacterReference, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _CharacterReferenceCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ChannelReferenceMapper extends SubClassMapperBase<ChannelReference> {
  ChannelReferenceMapper._();

  static ChannelReferenceMapper? _instance;
  static ChannelReferenceMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ChannelReferenceMapper._());
      ReferenceMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'ChannelReference';

  static String _$serverIdentifier(ChannelReference v) => v.serverIdentifier;
  static const Field<ChannelReference, String> _f$serverIdentifier = Field(
    'serverIdentifier',
    _$serverIdentifier,
  );
  static String _$channelIdentifier(ChannelReference v) => v.channelIdentifier;
  static const Field<ChannelReference, String> _f$channelIdentifier = Field(
    'channelIdentifier',
    _$channelIdentifier,
  );

  @override
  final MappableFields<ChannelReference> fields = const {
    #serverIdentifier: _f$serverIdentifier,
    #channelIdentifier: _f$channelIdentifier,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = "channel";
  @override
  late final ClassMapperBase superMapper = ReferenceMapper.ensureInitialized();

  static ChannelReference _instantiate(DecodingData data) {
    return ChannelReference(
      data.dec(_f$serverIdentifier),
      data.dec(_f$channelIdentifier),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ChannelReference fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ChannelReference>(map);
  }

  static ChannelReference fromJson(String json) {
    return ensureInitialized().decodeJson<ChannelReference>(json);
  }
}

mixin ChannelReferenceMappable {
  String toJson() {
    return ChannelReferenceMapper.ensureInitialized()
        .encodeJson<ChannelReference>(this as ChannelReference);
  }

  Map<String, dynamic> toMap() {
    return ChannelReferenceMapper.ensureInitialized()
        .encodeMap<ChannelReference>(this as ChannelReference);
  }

  ChannelReferenceCopyWith<ChannelReference, ChannelReference, ChannelReference>
  get copyWith =>
      _ChannelReferenceCopyWithImpl<ChannelReference, ChannelReference>(
        this as ChannelReference,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ChannelReferenceMapper.ensureInitialized().stringifyValue(
      this as ChannelReference,
    );
  }

  @override
  bool operator ==(Object other) {
    return ChannelReferenceMapper.ensureInitialized().equalsValue(
      this as ChannelReference,
      other,
    );
  }

  @override
  int get hashCode {
    return ChannelReferenceMapper.ensureInitialized().hashValue(
      this as ChannelReference,
    );
  }
}

extension ChannelReferenceValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ChannelReference, $Out> {
  ChannelReferenceCopyWith<$R, ChannelReference, $Out>
  get $asChannelReference =>
      $base.as((v, t, t2) => _ChannelReferenceCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ChannelReferenceCopyWith<$R, $In extends ChannelReference, $Out>
    implements ReferenceCopyWith<$R, $In, $Out> {
  @override
  $R call({String? serverIdentifier, String? channelIdentifier});
  ChannelReferenceCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _ChannelReferenceCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ChannelReference, $Out>
    implements ChannelReferenceCopyWith<$R, ChannelReference, $Out> {
  _ChannelReferenceCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ChannelReference> $mapper =
      ChannelReferenceMapper.ensureInitialized();
  @override
  $R call({String? serverIdentifier, String? channelIdentifier}) => $apply(
    FieldCopyWithData({
      if (serverIdentifier != null) #serverIdentifier: serverIdentifier,
      if (channelIdentifier != null) #channelIdentifier: channelIdentifier,
    }),
  );
  @override
  ChannelReference $make(CopyWithData data) => ChannelReference(
    data.get(#serverIdentifier, or: $value.serverIdentifier),
    data.get(#channelIdentifier, or: $value.channelIdentifier),
  );

  @override
  ChannelReferenceCopyWith<$R2, ChannelReference, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ChannelReferenceCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

