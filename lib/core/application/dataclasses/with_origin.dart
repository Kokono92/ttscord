import 'package:dart_mappable/dart_mappable.dart';
import 'package:ttscord/core/domain/datamodel/data_origin.dart';

part 'with_origin.mapper.dart';

@MappableClass(includeCustomMappers: [UriMapper()])
class WithOrigin<ContentT> with WithOriginMappable {
  final ContentT content;
  final ContentOrigin origin;

  const WithOrigin({required this.content, required this.origin});

  WithOrigin<NewT> propagate<NewT>(NewT Function(ContentT) mapper) =>
      WithOrigin(origin: origin, content: mapper(content));
}

extension WithOriginOps<T> on Iterable<WithOrigin<T>> {
  Iterable<T> get contents => map((elem) => elem.content);
  Iterable<ContentOrigin> get origins => map((elem) => elem.origin);

  Iterable<WithOrigin<R>> mapWIthOrigin<R>(R Function(T) mapper) =>
      map((elem) => elem.propagate(mapper));

  Iterable<WithOrigin<R>> whereContentType<R extends T>() => where(
    (elem) => elem.content is R,
  ).map(
    (elem) => WithOrigin<R>(origin: elem.origin, content: elem.content as R),
  );
}

class UriMapper extends SimpleMapper<Uri> {
  const UriMapper();

  @override
  Uri decode(dynamic value) {
    return Uri.parse(value);
  }

  @override
  dynamic encode(Uri self) {
    return self.toString();
  }
}
