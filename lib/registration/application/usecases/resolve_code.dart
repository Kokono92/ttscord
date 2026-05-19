import 'package:ttscord/core/application/dataclasses/with_origin.dart';
import 'package:ttscord/core/application/provider/scenario_sources_provider.dart';

WithOrigin<ScenarioIdentifier>? resolveCode(
  String code,
  String? defaultOrigin,
) {
  final uri = Uri.parse(code);
  if (uri.hasScheme && {"http", "https"}.contains(uri.scheme)) {
    return WithOrigin(
      content: uri.pathSegments.last.withoutExtension,
      origin: Uri.parse(uri.origin),
    );
  } else if (defaultOrigin != null) {
    return WithOrigin(content: code, origin: Uri.parse(defaultOrigin));
  }
  return null;
}

extension RemoveExt on String {
  String get withoutExtension => (split(".")..removeLast()).join(".");
}
