// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'server.dart';

class ServerMapper extends ClassMapperBase<Server> {
  ServerMapper._();

  static ServerMapper? _instance;
  static ServerMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ServerMapper._());
      ChannelCategoryMapper.ensureInitialized();
      ChannelMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Server';

  static String _$name(Server v) => v.name;
  static const Field<Server, String> _f$name = Field('name', _$name);
  static int _$id(Server v) => v.id;
  static const Field<Server, int> _f$id = Field('id', _$id);
  static String? _$iconPath(Server v) => v.iconPath;
  static const Field<Server, String> _f$iconPath = Field(
    'iconPath',
    _$iconPath,
    opt: true,
  );
  static List<ChannelCategory> _$categories(Server v) => v.categories;
  static const Field<Server, List<ChannelCategory>> _f$categories = Field(
    'categories',
    _$categories,
  );
  static List<Channel> _$channels(Server v) => v.channels;
  static const Field<Server, List<Channel>> _f$channels = Field(
    'channels',
    _$channels,
  );

  @override
  final MappableFields<Server> fields = const {
    #name: _f$name,
    #id: _f$id,
    #iconPath: _f$iconPath,
    #categories: _f$categories,
    #channels: _f$channels,
  };

  static Server _instantiate(DecodingData data) {
    return Server(
      name: data.dec(_f$name),
      id: data.dec(_f$id),
      iconPath: data.dec(_f$iconPath),
      categories: data.dec(_f$categories),
      channels: data.dec(_f$channels),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Server fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Server>(map);
  }

  static Server fromJson(String json) {
    return ensureInitialized().decodeJson<Server>(json);
  }
}

mixin ServerMappable {
  String toJson() {
    return ServerMapper.ensureInitialized().encodeJson<Server>(this as Server);
  }

  Map<String, dynamic> toMap() {
    return ServerMapper.ensureInitialized().encodeMap<Server>(this as Server);
  }

  ServerCopyWith<Server, Server, Server> get copyWith =>
      _ServerCopyWithImpl<Server, Server>(this as Server, $identity, $identity);
  @override
  String toString() {
    return ServerMapper.ensureInitialized().stringifyValue(this as Server);
  }

  @override
  bool operator ==(Object other) {
    return ServerMapper.ensureInitialized().equalsValue(this as Server, other);
  }

  @override
  int get hashCode {
    return ServerMapper.ensureInitialized().hashValue(this as Server);
  }
}

extension ServerValueCopy<$R, $Out> on ObjectCopyWith<$R, Server, $Out> {
  ServerCopyWith<$R, Server, $Out> get $asServer =>
      $base.as((v, t, t2) => _ServerCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ServerCopyWith<$R, $In extends Server, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<
    $R,
    ChannelCategory,
    ChannelCategoryCopyWith<$R, ChannelCategory, ChannelCategory>
  >
  get categories;
  ListCopyWith<$R, Channel, ChannelCopyWith<$R, Channel, Channel>> get channels;
  $R call({
    String? name,
    int? id,
    String? iconPath,
    List<ChannelCategory>? categories,
    List<Channel>? channels,
  });
  ServerCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ServerCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, Server, $Out>
    implements ServerCopyWith<$R, Server, $Out> {
  _ServerCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Server> $mapper = ServerMapper.ensureInitialized();
  @override
  ListCopyWith<
    $R,
    ChannelCategory,
    ChannelCategoryCopyWith<$R, ChannelCategory, ChannelCategory>
  >
  get categories => ListCopyWith(
    $value.categories,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(categories: v),
  );
  @override
  ListCopyWith<$R, Channel, ChannelCopyWith<$R, Channel, Channel>>
  get channels => ListCopyWith(
    $value.channels,
    (v, t) => v.copyWith.$chain(t),
    (v) => call(channels: v),
  );
  @override
  $R call({
    String? name,
    int? id,
    Object? iconPath = $none,
    List<ChannelCategory>? categories,
    List<Channel>? channels,
  }) => $apply(
    FieldCopyWithData({
      if (name != null) #name: name,
      if (id != null) #id: id,
      if (iconPath != $none) #iconPath: iconPath,
      if (categories != null) #categories: categories,
      if (channels != null) #channels: channels,
    }),
  );
  @override
  Server $make(CopyWithData data) => Server(
    name: data.get(#name, or: $value.name),
    id: data.get(#id, or: $value.id),
    iconPath: data.get(#iconPath, or: $value.iconPath),
    categories: data.get(#categories, or: $value.categories),
    channels: data.get(#channels, or: $value.channels),
  );

  @override
  ServerCopyWith<$R2, Server, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _ServerCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

