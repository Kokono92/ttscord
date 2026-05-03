import 'package:flutter/foundation.dart';

extension ToggleExt on ValueNotifier<bool> {
  void toggleAndNotify() => value = !value;
}
