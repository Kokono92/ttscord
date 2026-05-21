// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'call_session.dart';

class CallSessionMapper extends ClassMapperBase<CallSession> {
  CallSessionMapper._();

  static CallSessionMapper? _instance;
  static CallSessionMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = CallSessionMapper._());
      ConversationTargetMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'CallSession';

  static ConversationTarget _$target(CallSession v) => v.target;
  static const Field<CallSession, ConversationTarget> _f$target = Field(
    'target',
    _$target,
  );

  @override
  final MappableFields<CallSession> fields = const {#target: _f$target};

  static CallSession _instantiate(DecodingData data) {
    return CallSession(target: data.dec(_f$target));
  }

  @override
  final Function instantiate = _instantiate;

  static CallSession fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<CallSession>(map);
  }

  static CallSession fromJson(String json) {
    return ensureInitialized().decodeJson<CallSession>(json);
  }
}

mixin CallSessionMappable {
  String toJson() {
    return CallSessionMapper.ensureInitialized().encodeJson<CallSession>(
      this as CallSession,
    );
  }

  Map<String, dynamic> toMap() {
    return CallSessionMapper.ensureInitialized().encodeMap<CallSession>(
      this as CallSession,
    );
  }

  CallSessionCopyWith<CallSession, CallSession, CallSession> get copyWith =>
      _CallSessionCopyWithImpl<CallSession, CallSession>(
        this as CallSession,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return CallSessionMapper.ensureInitialized().stringifyValue(
      this as CallSession,
    );
  }

  @override
  bool operator ==(Object other) {
    return CallSessionMapper.ensureInitialized().equalsValue(
      this as CallSession,
      other,
    );
  }

  @override
  int get hashCode {
    return CallSessionMapper.ensureInitialized().hashValue(this as CallSession);
  }
}

extension CallSessionValueCopy<$R, $Out>
    on ObjectCopyWith<$R, CallSession, $Out> {
  CallSessionCopyWith<$R, CallSession, $Out> get $asCallSession =>
      $base.as((v, t, t2) => _CallSessionCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class CallSessionCopyWith<$R, $In extends CallSession, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ConversationTargetCopyWith<$R, ConversationTarget, ConversationTarget>
  get target;
  $R call({ConversationTarget? target});
  CallSessionCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _CallSessionCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, CallSession, $Out>
    implements CallSessionCopyWith<$R, CallSession, $Out> {
  _CallSessionCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<CallSession> $mapper =
      CallSessionMapper.ensureInitialized();
  @override
  ConversationTargetCopyWith<$R, ConversationTarget, ConversationTarget>
  get target => $value.target.copyWith.$chain((v) => call(target: v));
  @override
  $R call({ConversationTarget? target}) =>
      $apply(FieldCopyWithData({if (target != null) #target: target}));
  @override
  CallSession $make(CopyWithData data) =>
      CallSession(target: data.get(#target, or: $value.target));

  @override
  CallSessionCopyWith<$R2, CallSession, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _CallSessionCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

