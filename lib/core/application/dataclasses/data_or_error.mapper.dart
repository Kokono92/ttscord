// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_protected_member
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'data_or_error.dart';

class DataOrErrorMapper extends ClassMapperBase<DataOrError> {
  DataOrErrorMapper._();

  static DataOrErrorMapper? _instance;
  static DataOrErrorMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DataOrErrorMapper._());
      DataMapper.ensureInitialized();
      ErrorMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'DataOrError';
  @override
  Function get typeFactory =>
      <DataT>(f) => f<DataOrError<DataT>>();

  @override
  final MappableFields<DataOrError> fields = const {};

  static DataOrError<DataT> _instantiate<DataT>(DecodingData data) {
    throw MapperException.missingConstructor('DataOrError');
  }

  @override
  final Function instantiate = _instantiate;

  static DataOrError<DataT> fromMap<DataT>(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<DataOrError<DataT>>(map);
  }

  static DataOrError<DataT> fromJson<DataT>(String json) {
    return ensureInitialized().decodeJson<DataOrError<DataT>>(json);
  }
}

mixin DataOrErrorMappable<DataT> {
  String toJson();
  Map<String, dynamic> toMap();
  DataOrErrorCopyWith<
    DataOrError<DataT>,
    DataOrError<DataT>,
    DataOrError<DataT>,
    DataT
  >
  get copyWith;
}

abstract class DataOrErrorCopyWith<
  $R,
  $In extends DataOrError<DataT>,
  $Out,
  DataT
>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call();
  DataOrErrorCopyWith<$R2, $In, $Out2, DataT> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  );
}

class DataMapper extends ClassMapperBase<Data> {
  DataMapper._();

  static DataMapper? _instance;
  static DataMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DataMapper._());
      DataOrErrorMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Data';
  @override
  Function get typeFactory =>
      <DataT>(f) => f<Data<DataT>>();

  static dynamic _$data(Data v) => v.data;
  static dynamic _arg$data<DataT>(f) => f<DataT>();
  static const Field<Data, dynamic> _f$data = Field(
    'data',
    _$data,
    arg: _arg$data,
  );

  @override
  final MappableFields<Data> fields = const {#data: _f$data};

  static Data<DataT> _instantiate<DataT>(DecodingData data) {
    return Data(data.dec(_f$data));
  }

  @override
  final Function instantiate = _instantiate;

  static Data<DataT> fromMap<DataT>(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Data<DataT>>(map);
  }

  static Data<DataT> fromJson<DataT>(String json) {
    return ensureInitialized().decodeJson<Data<DataT>>(json);
  }
}

mixin DataMappable<DataT> {
  String toJson() {
    return DataMapper.ensureInitialized().encodeJson<Data<DataT>>(
      this as Data<DataT>,
    );
  }

  Map<String, dynamic> toMap() {
    return DataMapper.ensureInitialized().encodeMap<Data<DataT>>(
      this as Data<DataT>,
    );
  }

  DataCopyWith<Data<DataT>, Data<DataT>, Data<DataT>, DataT> get copyWith =>
      _DataCopyWithImpl<Data<DataT>, Data<DataT>, DataT>(
        this as Data<DataT>,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return DataMapper.ensureInitialized().stringifyValue(this as Data<DataT>);
  }

  @override
  bool operator ==(Object other) {
    return DataMapper.ensureInitialized().equalsValue(
      this as Data<DataT>,
      other,
    );
  }

  @override
  int get hashCode {
    return DataMapper.ensureInitialized().hashValue(this as Data<DataT>);
  }
}

extension DataValueCopy<$R, $Out, DataT>
    on ObjectCopyWith<$R, Data<DataT>, $Out> {
  DataCopyWith<$R, Data<DataT>, $Out, DataT> get $asData =>
      $base.as((v, t, t2) => _DataCopyWithImpl<$R, $Out, DataT>(v, t, t2));
}

abstract class DataCopyWith<$R, $In extends Data<DataT>, $Out, DataT>
    implements DataOrErrorCopyWith<$R, $In, $Out, DataT> {
  @override
  $R call({DataT? data});
  DataCopyWith<$R2, $In, $Out2, DataT> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _DataCopyWithImpl<$R, $Out, DataT>
    extends ClassCopyWithBase<$R, Data<DataT>, $Out>
    implements DataCopyWith<$R, Data<DataT>, $Out, DataT> {
  _DataCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Data> $mapper = DataMapper.ensureInitialized();
  @override
  $R call({Object? data = $none}) =>
      $apply(FieldCopyWithData({if (data != $none) #data: data}));
  @override
  Data<DataT> $make(CopyWithData data) =>
      Data(data.get(#data, or: $value.data));

  @override
  DataCopyWith<$R2, Data<DataT>, $Out2, DataT> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _DataCopyWithImpl<$R2, $Out2, DataT>($value, $cast, t);
}

class ErrorMapper extends ClassMapperBase<Error> {
  ErrorMapper._();

  static ErrorMapper? _instance;
  static ErrorMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ErrorMapper._());
      DataOrErrorMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'Error';
  @override
  Function get typeFactory =>
      <DataT>(f) => f<Error<DataT>>();

  static Object _$error(Error v) => v.error;
  static const Field<Error, Object> _f$error = Field('error', _$error);

  @override
  final MappableFields<Error> fields = const {#error: _f$error};

  static Error<DataT> _instantiate<DataT>(DecodingData data) {
    return Error(data.dec(_f$error));
  }

  @override
  final Function instantiate = _instantiate;

  static Error<DataT> fromMap<DataT>(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Error<DataT>>(map);
  }

  static Error<DataT> fromJson<DataT>(String json) {
    return ensureInitialized().decodeJson<Error<DataT>>(json);
  }
}

mixin ErrorMappable<DataT> {
  String toJson() {
    return ErrorMapper.ensureInitialized().encodeJson<Error<DataT>>(
      this as Error<DataT>,
    );
  }

  Map<String, dynamic> toMap() {
    return ErrorMapper.ensureInitialized().encodeMap<Error<DataT>>(
      this as Error<DataT>,
    );
  }

  ErrorCopyWith<Error<DataT>, Error<DataT>, Error<DataT>, DataT> get copyWith =>
      _ErrorCopyWithImpl<Error<DataT>, Error<DataT>, DataT>(
        this as Error<DataT>,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return ErrorMapper.ensureInitialized().stringifyValue(this as Error<DataT>);
  }

  @override
  bool operator ==(Object other) {
    return ErrorMapper.ensureInitialized().equalsValue(
      this as Error<DataT>,
      other,
    );
  }

  @override
  int get hashCode {
    return ErrorMapper.ensureInitialized().hashValue(this as Error<DataT>);
  }
}

extension ErrorValueCopy<$R, $Out, DataT>
    on ObjectCopyWith<$R, Error<DataT>, $Out> {
  ErrorCopyWith<$R, Error<DataT>, $Out, DataT> get $asError =>
      $base.as((v, t, t2) => _ErrorCopyWithImpl<$R, $Out, DataT>(v, t, t2));
}

abstract class ErrorCopyWith<$R, $In extends Error<DataT>, $Out, DataT>
    implements DataOrErrorCopyWith<$R, $In, $Out, DataT> {
  @override
  $R call({Object? error});
  ErrorCopyWith<$R2, $In, $Out2, DataT> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ErrorCopyWithImpl<$R, $Out, DataT>
    extends ClassCopyWithBase<$R, Error<DataT>, $Out>
    implements ErrorCopyWith<$R, Error<DataT>, $Out, DataT> {
  _ErrorCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Error> $mapper = ErrorMapper.ensureInitialized();
  @override
  $R call({Object? error}) =>
      $apply(FieldCopyWithData({if (error != null) #error: error}));
  @override
  Error<DataT> $make(CopyWithData data) =>
      Error(data.get(#error, or: $value.error));

  @override
  ErrorCopyWith<$R2, Error<DataT>, $Out2, DataT> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _ErrorCopyWithImpl<$R2, $Out2, DataT>($value, $cast, t);
}

