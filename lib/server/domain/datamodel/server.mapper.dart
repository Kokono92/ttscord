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

class ChannelMapper extends ClassMapperBase<Channel> {
  ChannelMapper._();

  static ChannelMapper? _instance;
  static ChannelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ChannelMapper._());
      UserMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Channel';

  static String _$name(Channel v) => v.name;
  static const Field<Channel, String> _f$name = Field('name', _$name);
  static ChannelType _$type(Channel v) => v.type;
  static const Field<Channel, ChannelType> _f$type = Field('type', _$type);
  static int? _$categoryId(Channel v) => v.categoryId;
  static const Field<Channel, int> _f$categoryId = Field(
    'categoryId',
    _$categoryId,
    opt: true,
  );
  static List<User> _$joiningUsers(Channel v) => v.joiningUsers;
  static const Field<Channel, List<User>> _f$joiningUsers = Field(
    'joiningUsers',
    _$joiningUsers,
    opt: true,
    def: const [],
  );

  @override
  final MappableFields<Channel> fields = const {
    #name: _f$name,
    #type: _f$type,
    #categoryId: _f$categoryId,
    #joiningUsers: _f$joiningUsers,
  };

  static Channel _instantiate(DecodingData data) {
    return Channel(
      name: data.dec(_f$name),
      type: data.dec(_f$type),
      categoryId: data.dec(_f$categoryId),
      joiningUsers: data.dec(_f$joiningUsers),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static Channel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Channel>(map);
  }

  static Channel fromJson(String json) {
    return ensureInitialized().decodeJson<Channel>(json);
  }
}

mixin ChannelMappable {
  String toJson() {
    return ChannelMapper.ensureInitialized().encodeJson<Channel>(
      this as Channel,
    );
  }

  Map<String, dynamic> toMap() {
    return ChannelMapper.ensureInitialized().encodeMap<Channel>(
      this as Channel,
    );
  }

  ChannelCopyWith<Channel, Channel, Channel> get copyWith =>
      _ChannelCopyWithImpl<Channel, Channel>(
        this as Channel,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ChannelMapper.ensureInitialized().stringifyValue(this as Channel);
  }

  @override
  bool operator ==(Object other) {
    return ChannelMapper.ensureInitialized().equalsValue(
      this as Channel,
      other,
    );
  }

  @override
  int get hashCode {
    return ChannelMapper.ensureInitialized().hashValue(this as Channel);
  }
}

extension ChannelValueCopy<$R, $Out> on ObjectCopyWith<$R, Channel, $Out> {
  ChannelCopyWith<$R, Channel, $Out> get $asChannel =>
      $base.as((v, t, t2) => _ChannelCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ChannelCopyWith<$R, $In extends Channel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, User, UserCopyWith<$R, User, User>> get joiningUsers;
  $R call({
    String? name,
    ChannelType? type,
    int? categoryId,
    List<User>? joiningUsers,
  });
  ChannelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ChannelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, Channel, $Out>
    implements ChannelCopyWith<$R, Channel, $Out> {
  _ChannelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Channel> $mapper =
      ChannelMapper.ensureInitialized();
  @override
  ListCopyWith<$R, User, UserCopyWith<$R, User, User>> get joiningUsers =>
      ListCopyWith(
        $value.joiningUsers,
        (v, t) => v.copyWith.$chain(t),
        (v) => call(joiningUsers: v),
      );
  @override
  $R call({
    String? name,
    ChannelType? type,
    Object? categoryId = $none,
    List<User>? joiningUsers,
  }) => $apply(
    FieldCopyWithData({
      if (name != null) #name: name,
      if (type != null) #type: type,
      if (categoryId != $none) #categoryId: categoryId,
      if (joiningUsers != null) #joiningUsers: joiningUsers,
    }),
  );
  @override
  Channel $make(CopyWithData data) => Channel(
    name: data.get(#name, or: $value.name),
    type: data.get(#type, or: $value.type),
    categoryId: data.get(#categoryId, or: $value.categoryId),
    joiningUsers: data.get(#joiningUsers, or: $value.joiningUsers),
  );

  @override
  ChannelCopyWith<$R2, Channel, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _ChannelCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

