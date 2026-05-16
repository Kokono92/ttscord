// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'profile.dart';

class ProfileMapper extends ClassMapperBase<Profile> {
  ProfileMapper._();

  static ProfileMapper? _instance;
  static ProfileMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ProfileMapper._());
      CharacterProfileMapper.ensureInitialized();
      ScenarioMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Profile';

  static String? _$displayName(Profile v) => v.displayName;
  static const Field<Profile, String> _f$displayName = Field(
    'displayName',
    _$displayName,
    opt: true,
  );
  static List<CharacterProfile> _$friends(Profile v) => v.friends;
  static const Field<Profile, List<CharacterProfile>> _f$friends = Field(
    'friends',
    _$friends,
  );
  static List<Scenario> _$scenarios(Profile v) => v.scenarios;
  static const Field<Profile, List<Scenario>> _f$scenarios = Field(
    'scenarios',
    _$scenarios,
  );

  @override
  final MappableFields<Profile> fields = const {
    #displayName: _f$displayName,
    #friends: _f$friends,
    #scenarios: _f$scenarios,
  };

  static Profile _instantiate(DecodingData data) {
    return Profile(
      displayName: data.dec(_f$displayName),
      friends: data.dec(_f$friends),
      scenarios: data.dec(_f$scenarios),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Profile fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Profile>(map);
  }

  static Profile fromJson(String json) {
    return ensureInitialized().decodeJson<Profile>(json);
  }
}

mixin ProfileMappable {
  String toJson() {
    return ProfileMapper.ensureInitialized().encodeJson<Profile>(
      this as Profile,
    );
  }

  Map<String, dynamic> toMap() {
    return ProfileMapper.ensureInitialized().encodeMap<Profile>(
      this as Profile,
    );
  }

  ProfileCopyWith<Profile, Profile, Profile> get copyWith =>
      _ProfileCopyWithImpl<Profile, Profile>(
        this as Profile,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ProfileMapper.ensureInitialized().stringifyValue(this as Profile);
  }

  @override
  bool operator ==(Object other) {
    return ProfileMapper.ensureInitialized().equalsValue(
      this as Profile,
      other,
    );
  }

  @override
  int get hashCode {
    return ProfileMapper.ensureInitialized().hashValue(this as Profile);
  }
}

extension ProfileValueCopy<$R, $Out> on ObjectCopyWith<$R, Profile, $Out> {
  ProfileCopyWith<$R, Profile, $Out> get $asProfile =>
      $base.as((v, t, t2) => _ProfileCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ProfileCopyWith<$R, $In extends Profile, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
    $R,
    CharacterProfile,
    CharacterProfileCopyWith<$R, CharacterProfile, CharacterProfile>
  >
  get friends;
  ListCopyWith<$R, Scenario, ScenarioCopyWith<$R, Scenario, Scenario>>
  get scenarios;
  $R call({
    String? displayName,
    List<CharacterProfile>? friends,
    List<Scenario>? scenarios,
  });
  ProfileCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ProfileCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Profile, $Out>
    implements ProfileCopyWith<$R, Profile, $Out> {
  _ProfileCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Profile> $mapper =
      ProfileMapper.ensureInitialized();
  @override
  ListCopyWith<
    $R,
    CharacterProfile,
    CharacterProfileCopyWith<$R, CharacterProfile, CharacterProfile>
  >
  get friends => ListCopyWith(
    $value.friends,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(friends: v),
  );
  @override
  ListCopyWith<$R, Scenario, ScenarioCopyWith<$R, Scenario, Scenario>>
  get scenarios => ListCopyWith(
    $value.scenarios,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(scenarios: v),
  );
  @override
  $R call({
    Object? displayName = $none,
    List<CharacterProfile>? friends,
    List<Scenario>? scenarios,
  }) => $apply(
    FieldCopyWithData({
      if (displayName != $none) #displayName: displayName,
      if (friends != null) #friends: friends,
      if (scenarios != null) #scenarios: scenarios,
    }),
  );
  @override
  Profile $make(CopyWithData data) => Profile(
    displayName: data.get(#displayName, or: $value.displayName),
    friends: data.get(#friends, or: $value.friends),
    scenarios: data.get(#scenarios, or: $value.scenarios),
  );

  @override
  ProfileCopyWith<$R2, Profile, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _ProfileCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

