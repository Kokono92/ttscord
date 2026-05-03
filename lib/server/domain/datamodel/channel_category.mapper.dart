// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'channel_category.dart';

class ChannelCategoryMapper extends ClassMapperBase<ChannelCategory> {
  ChannelCategoryMapper._();

  static ChannelCategoryMapper? _instance;
  static ChannelCategoryMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ChannelCategoryMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ChannelCategory';

  static String _$name(ChannelCategory v) => v.name;
  static const Field<ChannelCategory, String> _f$name = Field('name', _$name);
  static int _$id(ChannelCategory v) => v.id;
  static const Field<ChannelCategory, int> _f$id = Field('id', _$id);

  @override
  final MappableFields<ChannelCategory> fields = const {
    #name: _f$name,
    #id: _f$id,
  };

  static ChannelCategory _instantiate(DecodingData data) {
    return ChannelCategory(name: data.dec(_f$name), id: data.dec(_f$id));
  }

  @override
  final Function instantiate = _instantiate;

  static ChannelCategory fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ChannelCategory>(map);
  }

  static ChannelCategory fromJson(String json) {
    return ensureInitialized().decodeJson<ChannelCategory>(json);
  }
}

mixin ChannelCategoryMappable {
  String toJson() {
    return ChannelCategoryMapper.ensureInitialized()
        .encodeJson<ChannelCategory>(this as ChannelCategory);
  }

  Map<String, dynamic> toMap() {
    return ChannelCategoryMapper.ensureInitialized().encodeMap<ChannelCategory>(
      this as ChannelCategory,
    );
  }

  ChannelCategoryCopyWith<ChannelCategory, ChannelCategory, ChannelCategory>
  get copyWith =>
      _ChannelCategoryCopyWithImpl<ChannelCategory, ChannelCategory>(
        this as ChannelCategory,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ChannelCategoryMapper.ensureInitialized().stringifyValue(
      this as ChannelCategory,
    );
  }

  @override
  bool operator ==(Object other) {
    return ChannelCategoryMapper.ensureInitialized().equalsValue(
      this as ChannelCategory,
      other,
    );
  }

  @override
  int get hashCode {
    return ChannelCategoryMapper.ensureInitialized().hashValue(
      this as ChannelCategory,
    );
  }
}

extension ChannelCategoryValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ChannelCategory, $Out> {
  ChannelCategoryCopyWith<$R, ChannelCategory, $Out> get $asChannelCategory =>
      $base.as((v, t, t2) => _ChannelCategoryCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ChannelCategoryCopyWith<$R, $In extends ChannelCategory, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? name, int? id});
  ChannelCategoryCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _ChannelCategoryCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ChannelCategory, $Out>
    implements ChannelCategoryCopyWith<$R, ChannelCategory, $Out> {
  _ChannelCategoryCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ChannelCategory> $mapper =
      ChannelCategoryMapper.ensureInitialized();
  @override
  $R call({String? name, int? id}) => $apply(
    FieldCopyWithData({if (name != null) #name: name, if (id != null) #id: id}),
  );
  @override
  ChannelCategory $make(CopyWithData data) => ChannelCategory(
    name: data.get(#name, or: $value.name),
    id: data.get(#id, or: $value.id),
  );

  @override
  ChannelCategoryCopyWith<$R2, ChannelCategory, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ChannelCategoryCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

