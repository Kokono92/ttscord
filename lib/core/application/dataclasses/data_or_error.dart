import 'package:dart_mappable/dart_mappable.dart';

part 'data_or_error.mapper.dart';

@MappableClass()
sealed class DataOrError<DataT> with DataOrErrorMappable {
  const DataOrError();

  DataT? get maybeData =>
      this is Data<DataT> ? (this as Data<DataT>).data : null;
}

@MappableClass()
class Data<DataT> extends DataOrError<DataT> with DataMappable {
  final DataT data;
  const Data(this.data);
}

@MappableClass()
class Error<DataT> extends DataOrError<DataT> with ErrorMappable {
  final Object error;
  const Error(this.error);
}

extension DataOrErrorAccessExt<DataT> on Iterable<DataOrError<DataT>> {
  Iterable<DataT> get data => whereType<Data<DataT>>().map((elem) => elem.data);
  Iterable<Object> get errors =>
      whereType<Error<DataT>>().map((elem) => elem.error);
}
