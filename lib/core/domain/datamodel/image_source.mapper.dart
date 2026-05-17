// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'image_source.dart';

class ImageSourceMapper extends ClassMapperBase<ImageSource> {
  ImageSourceMapper._();

  static ImageSourceMapper? _instance;
  static ImageSourceMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ImageSourceMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ImageSource';

  static String _$identifier(ImageSource v) => v.identifier;
  static const Field<ImageSource, String> _f$identifier = Field(
    'identifier',
    _$identifier,
  );
  static String _$format(ImageSource v) => v.format;
  static const Field<ImageSource, String> _f$format = Field('format', _$format);

  @override
  final MappableFields<ImageSource> fields = const {
    #identifier: _f$identifier,
    #format: _f$format,
  };

  static ImageSource _instantiate(DecodingData data) {
    return ImageSource(
      identifier: data.dec(_f$identifier),
      format: data.dec(_f$format),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static ImageSource fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ImageSource>(map);
  }

  static ImageSource fromJson(String json) {
    return ensureInitialized().decodeJson<ImageSource>(json);
  }
}

mixin ImageSourceMappable {
  String toJson() {
    return ImageSourceMapper.ensureInitialized().encodeJson<ImageSource>(
      this as ImageSource,
    );
  }

  Map<String, dynamic> toMap() {
    return ImageSourceMapper.ensureInitialized().encodeMap<ImageSource>(
      this as ImageSource,
    );
  }

  ImageSourceCopyWith<ImageSource, ImageSource, ImageSource> get copyWith =>
      _ImageSourceCopyWithImpl<ImageSource, ImageSource>(
        this as ImageSource,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ImageSourceMapper.ensureInitialized().stringifyValue(
      this as ImageSource,
    );
  }

  @override
  bool operator ==(Object other) {
    return ImageSourceMapper.ensureInitialized().equalsValue(
      this as ImageSource,
      other,
    );
  }

  @override
  int get hashCode {
    return ImageSourceMapper.ensureInitialized().hashValue(this as ImageSource);
  }
}

extension ImageSourceValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ImageSource, $Out> {
  ImageSourceCopyWith<$R, ImageSource, $Out> get $asImageSource =>
      $base.as((v, t, t2) => _ImageSourceCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class ImageSourceCopyWith<$R, $In extends ImageSource, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? identifier, String? format});
  ImageSourceCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ImageSourceCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ImageSource, $Out>
    implements ImageSourceCopyWith<$R, ImageSource, $Out> {
  _ImageSourceCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ImageSource> $mapper =
      ImageSourceMapper.ensureInitialized();
  @override
  $R call({String? identifier, String? format}) => $apply(
    FieldCopyWithData({
      if (identifier != null) #identifier: identifier,
      if (format != null) #format: format,
    }),
  );
  @override
  ImageSource $make(CopyWithData data) => ImageSource(
    identifier: data.get(#identifier, or: $value.identifier),
    format: data.get(#format, or: $value.format),
  );

  @override
  ImageSourceCopyWith<$R2, ImageSource, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ImageSourceCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

