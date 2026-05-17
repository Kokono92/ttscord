// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'actions.dart';

class ScenarioActionMapper extends ClassMapperBase<ScenarioAction> {
  ScenarioActionMapper._();

  static ScenarioActionMapper? _instance;
  static ScenarioActionMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ScenarioActionMapper._());
      PlayAudioMapper.ensureInitialized();
      RingUpMapper.ensureInitialized();
      HangUpMapper.ensureInitialized();
      WaitForMapper.ensureInitialized();
      WaitUntilMapper.ensureInitialized();
      SubroutineMapper.ensureInitialized();
      ConditionalBranchMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ScenarioAction';

  @override
  final MappableFields<ScenarioAction> fields = const {};

  static ScenarioAction _instantiate(DecodingData data) {
    throw MapperException.missingConstructor('ScenarioAction');
  }

  @override
  final Function instantiate = _instantiate;

  static ScenarioAction fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ScenarioAction>(map);
  }

  static ScenarioAction fromJson(String json) {
    return ensureInitialized().decodeJson<ScenarioAction>(json);
  }
}

mixin ScenarioActionMappable {
  String toJson();
  Map<String, dynamic> toMap();
  ScenarioActionCopyWith<ScenarioAction, ScenarioAction, ScenarioAction>
  get copyWith;
}

abstract class ScenarioActionCopyWith<$R, $In extends ScenarioAction, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call();
  ScenarioActionCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class PlayAudioMapper extends SubClassMapperBase<PlayAudio> {
  PlayAudioMapper._();

  static PlayAudioMapper? _instance;
  static PlayAudioMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PlayAudioMapper._());
      ScenarioActionMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'PlayAudio';

  static String _$path(PlayAudio v) => v.path;
  static const Field<PlayAudio, String> _f$path = Field('path', _$path);

  @override
  final MappableFields<PlayAudio> fields = const {#path: _f$path};

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = "playAudio";
  @override
  late final ClassMapperBase superMapper =
      ScenarioActionMapper.ensureInitialized();

  static PlayAudio _instantiate(DecodingData data) {
    return PlayAudio(data.dec(_f$path));
  }

  @override
  final Function instantiate = _instantiate;

  static PlayAudio fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PlayAudio>(map);
  }

  static PlayAudio fromJson(String json) {
    return ensureInitialized().decodeJson<PlayAudio>(json);
  }
}

mixin PlayAudioMappable {
  String toJson() {
    return PlayAudioMapper.ensureInitialized().encodeJson<PlayAudio>(
      this as PlayAudio,
    );
  }

  Map<String, dynamic> toMap() {
    return PlayAudioMapper.ensureInitialized().encodeMap<PlayAudio>(
      this as PlayAudio,
    );
  }

  PlayAudioCopyWith<PlayAudio, PlayAudio, PlayAudio> get copyWith =>
      _PlayAudioCopyWithImpl<PlayAudio, PlayAudio>(
        this as PlayAudio,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return PlayAudioMapper.ensureInitialized().stringifyValue(
      this as PlayAudio,
    );
  }

  @override
  bool operator ==(Object other) {
    return PlayAudioMapper.ensureInitialized().equalsValue(
      this as PlayAudio,
      other,
    );
  }

  @override
  int get hashCode {
    return PlayAudioMapper.ensureInitialized().hashValue(this as PlayAudio);
  }
}

extension PlayAudioValueCopy<$R, $Out> on ObjectCopyWith<$R, PlayAudio, $Out> {
  PlayAudioCopyWith<$R, PlayAudio, $Out> get $asPlayAudio =>
      $base.as((v, t, t2) => _PlayAudioCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class PlayAudioCopyWith<$R, $In extends PlayAudio, $Out>
    implements ScenarioActionCopyWith<$R, $In, $Out> {
  @override
  $R call({String? path});
  PlayAudioCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _PlayAudioCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PlayAudio, $Out>
    implements PlayAudioCopyWith<$R, PlayAudio, $Out> {
  _PlayAudioCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PlayAudio> $mapper =
      PlayAudioMapper.ensureInitialized();
  @override
  $R call({String? path}) =>
      $apply(FieldCopyWithData({if (path != null) #path: path}));
  @override
  PlayAudio $make(CopyWithData data) =>
      PlayAudio(data.get(#path, or: $value.path));

  @override
  PlayAudioCopyWith<$R2, PlayAudio, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _PlayAudioCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class RingUpMapper extends SubClassMapperBase<RingUp> {
  RingUpMapper._();

  static RingUpMapper? _instance;
  static RingUpMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = RingUpMapper._());
      ScenarioActionMapper.ensureInitialized().addSubMapper(_instance!);
      CharacterReferenceMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'RingUp';

  static CharacterReference _$character(RingUp v) => v.character;
  static const Field<RingUp, CharacterReference> _f$character = Field(
    'character',
    _$character,
  );

  @override
  final MappableFields<RingUp> fields = const {#character: _f$character};

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = "ringUp";
  @override
  late final ClassMapperBase superMapper =
      ScenarioActionMapper.ensureInitialized();

  static RingUp _instantiate(DecodingData data) {
    return RingUp(data.dec(_f$character));
  }

  @override
  final Function instantiate = _instantiate;

  static RingUp fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<RingUp>(map);
  }

  static RingUp fromJson(String json) {
    return ensureInitialized().decodeJson<RingUp>(json);
  }
}

mixin RingUpMappable {
  String toJson() {
    return RingUpMapper.ensureInitialized().encodeJson<RingUp>(this as RingUp);
  }

  Map<String, dynamic> toMap() {
    return RingUpMapper.ensureInitialized().encodeMap<RingUp>(this as RingUp);
  }

  RingUpCopyWith<RingUp, RingUp, RingUp> get copyWith =>
      _RingUpCopyWithImpl<RingUp, RingUp>(this as RingUp, $identity, $identity);
  @override
  String toString() {
    return RingUpMapper.ensureInitialized().stringifyValue(this as RingUp);
  }

  @override
  bool operator ==(Object other) {
    return RingUpMapper.ensureInitialized().equalsValue(this as RingUp, other);
  }

  @override
  int get hashCode {
    return RingUpMapper.ensureInitialized().hashValue(this as RingUp);
  }
}

extension RingUpValueCopy<$R, $Out> on ObjectCopyWith<$R, RingUp, $Out> {
  RingUpCopyWith<$R, RingUp, $Out> get $asRingUp =>
      $base.as((v, t, t2) => _RingUpCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class RingUpCopyWith<$R, $In extends RingUp, $Out>
    implements ScenarioActionCopyWith<$R, $In, $Out> {
  CharacterReferenceCopyWith<$R, CharacterReference, CharacterReference>
  get character;
  @override
  $R call({CharacterReference? character});
  RingUpCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _RingUpCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, RingUp, $Out>
    implements RingUpCopyWith<$R, RingUp, $Out> {
  _RingUpCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<RingUp> $mapper = RingUpMapper.ensureInitialized();
  @override
  CharacterReferenceCopyWith<$R, CharacterReference, CharacterReference>
  get character => $value.character.copyWith.$chain((v) => call(character: v));
  @override
  $R call({CharacterReference? character}) =>
      $apply(FieldCopyWithData({if (character != null) #character: character}));
  @override
  RingUp $make(CopyWithData data) =>
      RingUp(data.get(#character, or: $value.character));

  @override
  RingUpCopyWith<$R2, RingUp, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _RingUpCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class HangUpMapper extends SubClassMapperBase<HangUp> {
  HangUpMapper._();

  static HangUpMapper? _instance;
  static HangUpMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = HangUpMapper._());
      ScenarioActionMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'HangUp';

  @override
  final MappableFields<HangUp> fields = const {};

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = "hangUp";
  @override
  late final ClassMapperBase superMapper =
      ScenarioActionMapper.ensureInitialized();

  static HangUp _instantiate(DecodingData data) {
    return HangUp();
  }

  @override
  final Function instantiate = _instantiate;

  static HangUp fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<HangUp>(map);
  }

  static HangUp fromJson(String json) {
    return ensureInitialized().decodeJson<HangUp>(json);
  }
}

mixin HangUpMappable {
  String toJson() {
    return HangUpMapper.ensureInitialized().encodeJson<HangUp>(this as HangUp);
  }

  Map<String, dynamic> toMap() {
    return HangUpMapper.ensureInitialized().encodeMap<HangUp>(this as HangUp);
  }

  HangUpCopyWith<HangUp, HangUp, HangUp> get copyWith =>
      _HangUpCopyWithImpl<HangUp, HangUp>(this as HangUp, $identity, $identity);
  @override
  String toString() {
    return HangUpMapper.ensureInitialized().stringifyValue(this as HangUp);
  }

  @override
  bool operator ==(Object other) {
    return HangUpMapper.ensureInitialized().equalsValue(this as HangUp, other);
  }

  @override
  int get hashCode {
    return HangUpMapper.ensureInitialized().hashValue(this as HangUp);
  }
}

extension HangUpValueCopy<$R, $Out> on ObjectCopyWith<$R, HangUp, $Out> {
  HangUpCopyWith<$R, HangUp, $Out> get $asHangUp =>
      $base.as((v, t, t2) => _HangUpCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class HangUpCopyWith<$R, $In extends HangUp, $Out>
    implements ScenarioActionCopyWith<$R, $In, $Out> {
  @override
  $R call();
  HangUpCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _HangUpCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, HangUp, $Out>
    implements HangUpCopyWith<$R, HangUp, $Out> {
  _HangUpCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<HangUp> $mapper = HangUpMapper.ensureInitialized();
  @override
  $R call() => $apply(FieldCopyWithData({}));
  @override
  HangUp $make(CopyWithData data) => HangUp();

  @override
  HangUpCopyWith<$R2, HangUp, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _HangUpCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class WaitForMapper extends SubClassMapperBase<WaitFor> {
  WaitForMapper._();

  static WaitForMapper? _instance;
  static WaitForMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = WaitForMapper._());
      ScenarioActionMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'WaitFor';

  static Duration _$duration(WaitFor v) => v.duration;
  static const Field<WaitFor, Duration> _f$duration = Field(
    'duration',
    _$duration,
  );
  static double _$jitterPercent(WaitFor v) => v.jitterPercent;
  static const Field<WaitFor, double> _f$jitterPercent = Field(
    'jitterPercent',
    _$jitterPercent,
    opt: true,
    def: 10.0,
  );

  @override
  final MappableFields<WaitFor> fields = const {
    #duration: _f$duration,
    #jitterPercent: _f$jitterPercent,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = "waitFor";
  @override
  late final ClassMapperBase superMapper =
      ScenarioActionMapper.ensureInitialized();

  static WaitFor _instantiate(DecodingData data) {
    return WaitFor(
      data.dec(_f$duration),
      jitterPercent: data.dec(_f$jitterPercent),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static WaitFor fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<WaitFor>(map);
  }

  static WaitFor fromJson(String json) {
    return ensureInitialized().decodeJson<WaitFor>(json);
  }
}

mixin WaitForMappable {
  String toJson() {
    return WaitForMapper.ensureInitialized().encodeJson<WaitFor>(
      this as WaitFor,
    );
  }

  Map<String, dynamic> toMap() {
    return WaitForMapper.ensureInitialized().encodeMap<WaitFor>(
      this as WaitFor,
    );
  }

  WaitForCopyWith<WaitFor, WaitFor, WaitFor> get copyWith =>
      _WaitForCopyWithImpl<WaitFor, WaitFor>(
        this as WaitFor,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return WaitForMapper.ensureInitialized().stringifyValue(this as WaitFor);
  }

  @override
  bool operator ==(Object other) {
    return WaitForMapper.ensureInitialized().equalsValue(
      this as WaitFor,
      other,
    );
  }

  @override
  int get hashCode {
    return WaitForMapper.ensureInitialized().hashValue(this as WaitFor);
  }
}

extension WaitForValueCopy<$R, $Out> on ObjectCopyWith<$R, WaitFor, $Out> {
  WaitForCopyWith<$R, WaitFor, $Out> get $asWaitFor =>
      $base.as((v, t, t2) => _WaitForCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class WaitForCopyWith<$R, $In extends WaitFor, $Out>
    implements ScenarioActionCopyWith<$R, $In, $Out> {
  @override
  $R call({Duration? duration, double? jitterPercent});
  WaitForCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _WaitForCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, WaitFor, $Out>
    implements WaitForCopyWith<$R, WaitFor, $Out> {
  _WaitForCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<WaitFor> $mapper =
      WaitForMapper.ensureInitialized();
  @override
  $R call({Duration? duration, double? jitterPercent}) => $apply(
    FieldCopyWithData({
      if (duration != null) #duration: duration,
      if (jitterPercent != null) #jitterPercent: jitterPercent,
    }),
  );
  @override
  WaitFor $make(CopyWithData data) => WaitFor(
    data.get(#duration, or: $value.duration),
    jitterPercent: data.get(#jitterPercent, or: $value.jitterPercent),
  );

  @override
  WaitForCopyWith<$R2, WaitFor, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _WaitForCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class WaitUntilMapper extends SubClassMapperBase<WaitUntil> {
  WaitUntilMapper._();

  static WaitUntilMapper? _instance;
  static WaitUntilMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = WaitUntilMapper._());
      ScenarioActionMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'WaitUntil';

  static DateTime _$datetime(WaitUntil v) => v.datetime;
  static const Field<WaitUntil, DateTime> _f$datetime = Field(
    'datetime',
    _$datetime,
  );

  @override
  final MappableFields<WaitUntil> fields = const {#datetime: _f$datetime};

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = "waitUntil";
  @override
  late final ClassMapperBase superMapper =
      ScenarioActionMapper.ensureInitialized();

  static WaitUntil _instantiate(DecodingData data) {
    return WaitUntil(data.dec(_f$datetime));
  }

  @override
  final Function instantiate = _instantiate;

  static WaitUntil fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<WaitUntil>(map);
  }

  static WaitUntil fromJson(String json) {
    return ensureInitialized().decodeJson<WaitUntil>(json);
  }
}

mixin WaitUntilMappable {
  String toJson() {
    return WaitUntilMapper.ensureInitialized().encodeJson<WaitUntil>(
      this as WaitUntil,
    );
  }

  Map<String, dynamic> toMap() {
    return WaitUntilMapper.ensureInitialized().encodeMap<WaitUntil>(
      this as WaitUntil,
    );
  }

  WaitUntilCopyWith<WaitUntil, WaitUntil, WaitUntil> get copyWith =>
      _WaitUntilCopyWithImpl<WaitUntil, WaitUntil>(
        this as WaitUntil,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return WaitUntilMapper.ensureInitialized().stringifyValue(
      this as WaitUntil,
    );
  }

  @override
  bool operator ==(Object other) {
    return WaitUntilMapper.ensureInitialized().equalsValue(
      this as WaitUntil,
      other,
    );
  }

  @override
  int get hashCode {
    return WaitUntilMapper.ensureInitialized().hashValue(this as WaitUntil);
  }
}

extension WaitUntilValueCopy<$R, $Out> on ObjectCopyWith<$R, WaitUntil, $Out> {
  WaitUntilCopyWith<$R, WaitUntil, $Out> get $asWaitUntil =>
      $base.as((v, t, t2) => _WaitUntilCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class WaitUntilCopyWith<$R, $In extends WaitUntil, $Out>
    implements ScenarioActionCopyWith<$R, $In, $Out> {
  @override
  $R call({DateTime? datetime});
  WaitUntilCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _WaitUntilCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, WaitUntil, $Out>
    implements WaitUntilCopyWith<$R, WaitUntil, $Out> {
  _WaitUntilCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<WaitUntil> $mapper =
      WaitUntilMapper.ensureInitialized();
  @override
  $R call({DateTime? datetime}) =>
      $apply(FieldCopyWithData({if (datetime != null) #datetime: datetime}));
  @override
  WaitUntil $make(CopyWithData data) =>
      WaitUntil(data.get(#datetime, or: $value.datetime));

  @override
  WaitUntilCopyWith<$R2, WaitUntil, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _WaitUntilCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class SubroutineMapper extends SubClassMapperBase<Subroutine> {
  SubroutineMapper._();

  static SubroutineMapper? _instance;
  static SubroutineMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = SubroutineMapper._());
      ScenarioActionMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'Subroutine';

  static String _$identifier(Subroutine v) => v.identifier;
  static const Field<Subroutine, String> _f$identifier = Field(
    'identifier',
    _$identifier,
  );

  @override
  final MappableFields<Subroutine> fields = const {#identifier: _f$identifier};

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = "subroutine";
  @override
  late final ClassMapperBase superMapper =
      ScenarioActionMapper.ensureInitialized();

  static Subroutine _instantiate(DecodingData data) {
    return Subroutine(data.dec(_f$identifier));
  }

  @override
  final Function instantiate = _instantiate;

  static Subroutine fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Subroutine>(map);
  }

  static Subroutine fromJson(String json) {
    return ensureInitialized().decodeJson<Subroutine>(json);
  }
}

mixin SubroutineMappable {
  String toJson() {
    return SubroutineMapper.ensureInitialized().encodeJson<Subroutine>(
      this as Subroutine,
    );
  }

  Map<String, dynamic> toMap() {
    return SubroutineMapper.ensureInitialized().encodeMap<Subroutine>(
      this as Subroutine,
    );
  }

  SubroutineCopyWith<Subroutine, Subroutine, Subroutine> get copyWith =>
      _SubroutineCopyWithImpl<Subroutine, Subroutine>(
        this as Subroutine,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return SubroutineMapper.ensureInitialized().stringifyValue(
      this as Subroutine,
    );
  }

  @override
  bool operator ==(Object other) {
    return SubroutineMapper.ensureInitialized().equalsValue(
      this as Subroutine,
      other,
    );
  }

  @override
  int get hashCode {
    return SubroutineMapper.ensureInitialized().hashValue(this as Subroutine);
  }
}

extension SubroutineValueCopy<$R, $Out>
    on ObjectCopyWith<$R, Subroutine, $Out> {
  SubroutineCopyWith<$R, Subroutine, $Out> get $asSubroutine =>
      $base.as((v, t, t2) => _SubroutineCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class SubroutineCopyWith<$R, $In extends Subroutine, $Out>
    implements ScenarioActionCopyWith<$R, $In, $Out> {
  @override
  $R call({String? identifier});
  SubroutineCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _SubroutineCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Subroutine, $Out>
    implements SubroutineCopyWith<$R, Subroutine, $Out> {
  _SubroutineCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Subroutine> $mapper =
      SubroutineMapper.ensureInitialized();
  @override
  $R call({String? identifier}) => $apply(
    FieldCopyWithData({if (identifier != null) #identifier: identifier}),
  );
  @override
  Subroutine $make(CopyWithData data) =>
      Subroutine(data.get(#identifier, or: $value.identifier));

  @override
  SubroutineCopyWith<$R2, Subroutine, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _SubroutineCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

class ConditionalBranchMapper extends SubClassMapperBase<ConditionalBranch> {
  ConditionalBranchMapper._();

  static ConditionalBranchMapper? _instance;
  static ConditionalBranchMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ConditionalBranchMapper._());
      ScenarioActionMapper.ensureInitialized().addSubMapper(_instance!);
      BranchConditionMapper.ensureInitialized();
      ScenarioActionMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ConditionalBranch';

  static List<BranchCondition> _$branches(ConditionalBranch v) => v.branches;
  static const Field<ConditionalBranch, List<BranchCondition>> _f$branches =
      Field('branches', _$branches);
  static List<ScenarioAction> _$otherwise(ConditionalBranch v) => v.otherwise;
  static const Field<ConditionalBranch, List<ScenarioAction>> _f$otherwise =
      Field('otherwise', _$otherwise, opt: true, def: const []);

  @override
  final MappableFields<ConditionalBranch> fields = const {
    #branches: _f$branches,
    #otherwise: _f$otherwise,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = "conditionalBranch";
  @override
  late final ClassMapperBase superMapper =
      ScenarioActionMapper.ensureInitialized();

  static ConditionalBranch _instantiate(DecodingData data) {
    return ConditionalBranch(
      data.dec(_f$branches),
      otherwise: data.dec(_f$otherwise),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ConditionalBranch fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ConditionalBranch>(map);
  }

  static ConditionalBranch fromJson(String json) {
    return ensureInitialized().decodeJson<ConditionalBranch>(json);
  }
}

mixin ConditionalBranchMappable {
  String toJson() {
    return ConditionalBranchMapper.ensureInitialized()
        .encodeJson<ConditionalBranch>(this as ConditionalBranch);
  }

  Map<String, dynamic> toMap() {
    return ConditionalBranchMapper.ensureInitialized()
        .encodeMap<ConditionalBranch>(this as ConditionalBranch);
  }

  ConditionalBranchCopyWith<
    ConditionalBranch,
    ConditionalBranch,
    ConditionalBranch
  >
  get copyWith =>
      _ConditionalBranchCopyWithImpl<ConditionalBranch, ConditionalBranch>(
        this as ConditionalBranch,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ConditionalBranchMapper.ensureInitialized().stringifyValue(
      this as ConditionalBranch,
    );
  }

  @override
  bool operator ==(Object other) {
    return ConditionalBranchMapper.ensureInitialized().equalsValue(
      this as ConditionalBranch,
      other,
    );
  }

  @override
  int get hashCode {
    return ConditionalBranchMapper.ensureInitialized().hashValue(
      this as ConditionalBranch,
    );
  }
}

extension ConditionalBranchValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ConditionalBranch, $Out> {
  ConditionalBranchCopyWith<$R, ConditionalBranch, $Out>
  get $asConditionalBranch => $base.as(
    (v, t, t2) => _ConditionalBranchCopyWithImpl<$R, $Out>(v, t, t2),
  );
}

abstract class ConditionalBranchCopyWith<
  $R,
  $In extends ConditionalBranch,
  $Out
>
    implements ScenarioActionCopyWith<$R, $In, $Out> {
  ListCopyWith<
    $R,
    BranchCondition,
    BranchConditionCopyWith<$R, BranchCondition, BranchCondition>
  >
  get branches;
  ListCopyWith<
    $R,
    ScenarioAction,
    ScenarioActionCopyWith<$R, ScenarioAction, ScenarioAction>
  >
  get otherwise;
  @override
  $R call({List<BranchCondition>? branches, List<ScenarioAction>? otherwise});
  ConditionalBranchCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _ConditionalBranchCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ConditionalBranch, $Out>
    implements ConditionalBranchCopyWith<$R, ConditionalBranch, $Out> {
  _ConditionalBranchCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ConditionalBranch> $mapper =
      ConditionalBranchMapper.ensureInitialized();
  @override
  ListCopyWith<
    $R,
    BranchCondition,
    BranchConditionCopyWith<$R, BranchCondition, BranchCondition>
  >
  get branches => ListCopyWith(
    $value.branches,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(branches: v),
  );
  @override
  ListCopyWith<
    $R,
    ScenarioAction,
    ScenarioActionCopyWith<$R, ScenarioAction, ScenarioAction>
  >
  get otherwise => ListCopyWith(
    $value.otherwise,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(otherwise: v),
  );
  @override
  $R call({List<BranchCondition>? branches, List<ScenarioAction>? otherwise}) =>
      $apply(
        FieldCopyWithData({
          if (branches != null) #branches: branches,
          if (otherwise != null) #otherwise: otherwise,
        }),
      );
  @override
  ConditionalBranch $make(CopyWithData data) => ConditionalBranch(
    data.get(#branches, or: $value.branches),
    otherwise: data.get(#otherwise, or: $value.otherwise),
  );

  @override
  ConditionalBranchCopyWith<$R2, ConditionalBranch, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ConditionalBranchCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

