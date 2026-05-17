import 'package:ttscord/core/domain/datamodel/data_origin.dart';

class WithOrigin<ContentT> {
  final ContentT content;
  final ContentOrigin origin;

  const WithOrigin({required this.content, required this.origin});
}
