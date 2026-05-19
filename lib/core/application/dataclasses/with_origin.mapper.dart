// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'with_origin.dart';

class WithOriginMapper extends ClassMapperBase<WithOrigin> {
  WithOriginMapper._();

  static WithOriginMapper? _instance;
  static WithOriginMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = WithOriginMapper._());
      MapperContainer.globals.useAll([UriMapper()]);
    }
    return _instance!;
  }

  @override
  final String id = 'WithOrigin';
  @override
  Function get typeFactory =>
      <ContentT>(f) => f<WithOrigin<ContentT>>();

  static dynamic _$content(WithOrigin v) => v.content;
  static dynamic _arg$content<ContentT>(f) => f<ContentT>();
  static const Field<WithOrigin, dynamic> _f$content = Field(
    'content',
    _$content,
    arg: _arg$content,
  );
  static Uri _$origin(WithOrigin v) => v.origin;
  static const Field<WithOrigin, Uri> _f$origin = Field('origin', _$origin);

  @override
  final MappableFields<WithOrigin> fields = const {
    #content: _f$content,
    #origin: _f$origin,
  };

  static WithOrigin<ContentT> _instantiate<ContentT>(DecodingData data) {
    return WithOrigin(
      content: data.dec(_f$content),
      origin: data.dec(_f$origin),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static WithOrigin<ContentT> fromMap<ContentT>(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<WithOrigin<ContentT>>(map);
  }

  static WithOrigin<ContentT> fromJson<ContentT>(String json) {
    return ensureInitialized().decodeJson<WithOrigin<ContentT>>(json);
  }
}

mixin WithOriginMappable<ContentT> {
  String toJson() {
    return WithOriginMapper.ensureInitialized()
        .encodeJson<WithOrigin<ContentT>>(this as WithOrigin<ContentT>);
  }

  Map<String, dynamic> toMap() {
    return WithOriginMapper.ensureInitialized().encodeMap<WithOrigin<ContentT>>(
      this as WithOrigin<ContentT>,
    );
  }

  WithOriginCopyWith<
    WithOrigin<ContentT>,
    WithOrigin<ContentT>,
    WithOrigin<ContentT>,
    ContentT
  >
  get copyWith =>
      _WithOriginCopyWithImpl<
        WithOrigin<ContentT>,
        WithOrigin<ContentT>,
        ContentT
      >(this as WithOrigin<ContentT>, $identity, $identity);
  @override
  String toString() {
    return WithOriginMapper.ensureInitialized().stringifyValue(
      this as WithOrigin<ContentT>,
    );
  }

  @override
  bool operator ==(Object other) {
    return WithOriginMapper.ensureInitialized().equalsValue(
      this as WithOrigin<ContentT>,
      other,
    );
  }

  @override
  int get hashCode {
    return WithOriginMapper.ensureInitialized().hashValue(
      this as WithOrigin<ContentT>,
    );
  }
}

extension WithOriginValueCopy<$R, $Out, ContentT>
    on ObjectCopyWith<$R, WithOrigin<ContentT>, $Out> {
  WithOriginCopyWith<$R, WithOrigin<ContentT>, $Out, ContentT>
  get $asWithOrigin => $base.as(
    (v, t, t2) => _WithOriginCopyWithImpl<$R, $Out, ContentT>(v, t, t2),
  );
}

abstract class WithOriginCopyWith<
  $R,
  $In extends WithOrigin<ContentT>,
  $Out,
  ContentT
>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({ContentT? content, Uri? origin});
  WithOriginCopyWith<$R2, $In, $Out2, ContentT> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class _WithOriginCopyWithImpl<$R, $Out, ContentT>
    extends ClassCopyWithBase<$R, WithOrigin<ContentT>, $Out>
    implements WithOriginCopyWith<$R, WithOrigin<ContentT>, $Out, ContentT> {
  _WithOriginCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<WithOrigin> $mapper =
      WithOriginMapper.ensureInitialized();
  @override
  $R call({Object? content = $none, Uri? origin}) => $apply(
    FieldCopyWithData({
      if (content != $none) #content: content,
      if (origin != null) #origin: origin,
    }),
  );
  @override
  WithOrigin<ContentT> $make(CopyWithData data) => WithOrigin(
    content: data.get(#content, or: $value.content),
    origin: data.get(#origin, or: $value.origin),
  );

  @override
  WithOriginCopyWith<$R2, WithOrigin<ContentT>, $Out2, ContentT>
  $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _WithOriginCopyWithImpl<$R2, $Out2, ContentT>($value, $cast, t);
}

