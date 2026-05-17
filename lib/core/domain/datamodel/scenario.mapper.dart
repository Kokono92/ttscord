// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'scenario.dart';

class ScenarioMapper extends ClassMapperBase<Scenario> {
  ScenarioMapper._();

  static ScenarioMapper? _instance;
  static ScenarioMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ScenarioMapper._());
      TriggerMapper.ensureInitialized();
      ScenarioActionMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Scenario';

  static String _$title(Scenario v) => v.title;
  static const Field<Scenario, String> _f$title = Field('title', _$title);
  static String _$author(Scenario v) => v.author;
  static const Field<Scenario, String> _f$author = Field('author', _$author);
  static String _$description(Scenario v) => v.description;
  static const Field<Scenario, String> _f$description = Field(
    'description',
    _$description,
  );
  static List<Trigger> _$triggers(Scenario v) => v.triggers;
  static const Field<Scenario, List<Trigger>> _f$triggers = Field(
    'triggers',
    _$triggers,
  );
  static List<ScenarioAction> _$flow(Scenario v) => v.flow;
  static const Field<Scenario, List<ScenarioAction>> _f$flow = Field(
    'flow',
    _$flow,
  );
  static Map<String, List<ScenarioAction>> _$subroutines(Scenario v) =>
      v.subroutines;
  static const Field<Scenario, Map<String, List<ScenarioAction>>>
  _f$subroutines = Field(
    'subroutines',
    _$subroutines,
    opt: true,
    def: const {},
  );

  @override
  final MappableFields<Scenario> fields = const {
    #title: _f$title,
    #author: _f$author,
    #description: _f$description,
    #triggers: _f$triggers,
    #flow: _f$flow,
    #subroutines: _f$subroutines,
  };

  static Scenario _instantiate(DecodingData data) {
    return Scenario(
      title: data.dec(_f$title),
      author: data.dec(_f$author),
      description: data.dec(_f$description),
      triggers: data.dec(_f$triggers),
      flow: data.dec(_f$flow),
      subroutines: data.dec(_f$subroutines),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Scenario fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Scenario>(map);
  }

  static Scenario fromJson(String json) {
    return ensureInitialized().decodeJson<Scenario>(json);
  }
}

mixin ScenarioMappable {
  String toJson() {
    return ScenarioMapper.ensureInitialized().encodeJson<Scenario>(
      this as Scenario,
    );
  }

  Map<String, dynamic> toMap() {
    return ScenarioMapper.ensureInitialized().encodeMap<Scenario>(
      this as Scenario,
    );
  }

  ScenarioCopyWith<Scenario, Scenario, Scenario> get copyWith =>
      _ScenarioCopyWithImpl<Scenario, Scenario>(
        this as Scenario,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ScenarioMapper.ensureInitialized().stringifyValue(this as Scenario);
  }

  @override
  bool operator ==(Object other) {
    return ScenarioMapper.ensureInitialized().equalsValue(
      this as Scenario,
      other,
    );
  }

  @override
  int get hashCode {
    return ScenarioMapper.ensureInitialized().hashValue(this as Scenario);
  }
}

extension ScenarioValueCopy<$R, $Out> on ObjectCopyWith<$R, Scenario, $Out> {
  ScenarioCopyWith<$R, Scenario, $Out> get $asScenario =>
      $base.as((v, t, t2) => _ScenarioCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ScenarioCopyWith<$R, $In extends Scenario, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, Trigger, TriggerCopyWith<$R, Trigger, Trigger>> get triggers;
  ListCopyWith<
    $R,
    ScenarioAction,
    ScenarioActionCopyWith<$R, ScenarioAction, ScenarioAction>
  >
  get flow;
  MapCopyWith<
    $R,
    String,
    List<ScenarioAction>,
    ObjectCopyWith<$R, List<ScenarioAction>, List<ScenarioAction>>
  >
  get subroutines;
  $R call({
    String? title,
    String? author,
    String? description,
    List<Trigger>? triggers,
    List<ScenarioAction>? flow,
    Map<String, List<ScenarioAction>>? subroutines,
  });
  ScenarioCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ScenarioCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Scenario, $Out>
    implements ScenarioCopyWith<$R, Scenario, $Out> {
  _ScenarioCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Scenario> $mapper =
      ScenarioMapper.ensureInitialized();
  @override
  ListCopyWith<$R, Trigger, TriggerCopyWith<$R, Trigger, Trigger>>
  get triggers => ListCopyWith(
    $value.triggers,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(triggers: v),
  );
  @override
  ListCopyWith<
    $R,
    ScenarioAction,
    ScenarioActionCopyWith<$R, ScenarioAction, ScenarioAction>
  >
  get flow => ListCopyWith(
    $value.flow,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(flow: v),
  );
  @override
  MapCopyWith<
    $R,
    String,
    List<ScenarioAction>,
    ObjectCopyWith<$R, List<ScenarioAction>, List<ScenarioAction>>
  >
  get subroutines => MapCopyWith(
    $value.subroutines,
    (v, t) => ObjectCopyWith(v, $identity, t),
    (v) => call(subroutines: v),
  );
  @override
  $R call({
    String? title,
    String? author,
    String? description,
    List<Trigger>? triggers,
    List<ScenarioAction>? flow,
    Map<String, List<ScenarioAction>>? subroutines,
  }) => $apply(
    FieldCopyWithData({
      if (title != null) #title: title,
      if (author != null) #author: author,
      if (description != null) #description: description,
      if (triggers != null) #triggers: triggers,
      if (flow != null) #flow: flow,
      if (subroutines != null) #subroutines: subroutines,
    }),
  );
  @override
  Scenario $make(CopyWithData data) => Scenario(
    title: data.get(#title, or: $value.title),
    author: data.get(#author, or: $value.author),
    description: data.get(#description, or: $value.description),
    triggers: data.get(#triggers, or: $value.triggers),
    flow: data.get(#flow, or: $value.flow),
    subroutines: data.get(#subroutines, or: $value.subroutines),
  );

  @override
  ScenarioCopyWith<$R2, Scenario, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ScenarioCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

