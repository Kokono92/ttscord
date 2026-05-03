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
    }
    return _instance!;
  }

  @override
  final String id = 'Scenario';

  static int _$val(Scenario v) => v.val;
  static const Field<Scenario, int> _f$val = Field('val', _$val);

  @override
  final MappableFields<Scenario> fields = const {#val: _f$val};

  static Scenario _instantiate(DecodingData data) {
    return Scenario(data.dec(_f$val));
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
  $R call({int? val});
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
  $R call({int? val}) =>
      $apply(FieldCopyWithData({if (val != null) #val: val}));
  @override
  Scenario $make(CopyWithData data) => Scenario(data.get(#val, or: $value.val));

  @override
  ScenarioCopyWith<$R2, Scenario, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ScenarioCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

