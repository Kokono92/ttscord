// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'branch_conditions.dart';

class BranchConditionMapper extends ClassMapperBase<BranchCondition> {
  BranchConditionMapper._();

  static BranchConditionMapper? _instance;
  static BranchConditionMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = BranchConditionMapper._());
      ClockConditionMapper.ensureInitialized();
      ScenarioActionMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'BranchCondition';

  static List<ScenarioAction> _$actions(BranchCondition v) => v.actions;
  static const Field<BranchCondition, List<ScenarioAction>> _f$actions = Field(
    'actions',
    _$actions,
  );

  @override
  final MappableFields<BranchCondition> fields = const {#actions: _f$actions};

  static BranchCondition _instantiate(DecodingData data) {
    throw MapperException.missingConstructor('BranchCondition');
  }

  @override
  final Function instantiate = _instantiate;

  static BranchCondition fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<BranchCondition>(map);
  }

  static BranchCondition fromJson(String json) {
    return ensureInitialized().decodeJson<BranchCondition>(json);
  }
}

mixin BranchConditionMappable {
  String toJson();
  Map<String, dynamic> toMap();
  BranchConditionCopyWith<BranchCondition, BranchCondition, BranchCondition>
  get copyWith;
}

abstract class BranchConditionCopyWith<$R, $In extends BranchCondition, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
    $R,
    ScenarioAction,
    ScenarioActionCopyWith<$R, ScenarioAction, ScenarioAction>
  >
  get actions;
  $R call({List<ScenarioAction>? actions});
  BranchConditionCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class ClockConditionMapper extends SubClassMapperBase<ClockCondition> {
  ClockConditionMapper._();

  static ClockConditionMapper? _instance;
  static ClockConditionMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ClockConditionMapper._());
      BranchConditionMapper.ensureInitialized().addSubMapper(_instance!);
      MapperContainer.globals.useAll([TimeMapper()]);
      ScenarioActionMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ClockCondition';

  static Time _$since(ClockCondition v) => v.since;
  static const Field<ClockCondition, Time> _f$since = Field('since', _$since);
  static Time _$until(ClockCondition v) => v.until;
  static const Field<ClockCondition, Time> _f$until = Field('until', _$until);
  static List<ScenarioAction> _$actions(ClockCondition v) => v.actions;
  static const Field<ClockCondition, List<ScenarioAction>> _f$actions = Field(
    'actions',
    _$actions,
  );

  @override
  final MappableFields<ClockCondition> fields = const {
    #since: _f$since,
    #until: _f$until,
    #actions: _f$actions,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = "clockCondition";
  @override
  late final ClassMapperBase superMapper =
      BranchConditionMapper.ensureInitialized();

  static ClockCondition _instantiate(DecodingData data) {
    return ClockCondition(
      since: data.dec(_f$since),
      until: data.dec(_f$until),
      actions: data.dec(_f$actions),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ClockCondition fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ClockCondition>(map);
  }

  static ClockCondition fromJson(String json) {
    return ensureInitialized().decodeJson<ClockCondition>(json);
  }
}

mixin ClockConditionMappable {
  String toJson() {
    return ClockConditionMapper.ensureInitialized().encodeJson<ClockCondition>(
      this as ClockCondition,
    );
  }

  Map<String, dynamic> toMap() {
    return ClockConditionMapper.ensureInitialized().encodeMap<ClockCondition>(
      this as ClockCondition,
    );
  }

  ClockConditionCopyWith<ClockCondition, ClockCondition, ClockCondition>
  get copyWith => _ClockConditionCopyWithImpl<ClockCondition, ClockCondition>(
    this as ClockCondition,
    $identity,
    $identity,
  );
  @override
  String toString() {
    return ClockConditionMapper.ensureInitialized().stringifyValue(
      this as ClockCondition,
    );
  }

  @override
  bool operator ==(Object other) {
    return ClockConditionMapper.ensureInitialized().equalsValue(
      this as ClockCondition,
      other,
    );
  }

  @override
  int get hashCode {
    return ClockConditionMapper.ensureInitialized().hashValue(
      this as ClockCondition,
    );
  }
}

extension ClockConditionValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ClockCondition, $Out> {
  ClockConditionCopyWith<$R, ClockCondition, $Out> get $asClockCondition =>
      $base.as((v, t, t2) => _ClockConditionCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ClockConditionCopyWith<$R, $In extends ClockCondition, $Out>
    implements BranchConditionCopyWith<$R, $In, $Out> {
  @override
  ListCopyWith<
    $R,
    ScenarioAction,
    ScenarioActionCopyWith<$R, ScenarioAction, ScenarioAction>
  >
  get actions;
  @override
  $R call({Time? since, Time? until, List<ScenarioAction>? actions});
  ClockConditionCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _ClockConditionCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ClockCondition, $Out>
    implements ClockConditionCopyWith<$R, ClockCondition, $Out> {
  _ClockConditionCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ClockCondition> $mapper =
      ClockConditionMapper.ensureInitialized();
  @override
  ListCopyWith<
    $R,
    ScenarioAction,
    ScenarioActionCopyWith<$R, ScenarioAction, ScenarioAction>
  >
  get actions => ListCopyWith(
    $value.actions,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(actions: v),
  );
  @override
  $R call({Time? since, Time? until, List<ScenarioAction>? actions}) => $apply(
    FieldCopyWithData({
      if (since != null) #since: since,
      if (until != null) #until: until,
      if (actions != null) #actions: actions,
    }),
  );
  @override
  ClockCondition $make(CopyWithData data) => ClockCondition(
    since: data.get(#since, or: $value.since),
    until: data.get(#until, or: $value.until),
    actions: data.get(#actions, or: $value.actions),
  );

  @override
  ClockConditionCopyWith<$R2, ClockCondition, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ClockConditionCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

