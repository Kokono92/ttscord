import 'dart:ui' show Image, ImageByteFormat;

import 'package:flutter/painting.dart';
import 'package:riverpod/riverpod.dart';

final uiImageProvider = FutureProvider.family.autoDispose<ImageProvider, Image>(
  (ref, image) async {
    final byteData = await image.toByteData(format: ImageByteFormat.png);
    final bytes = byteData!.buffer.asUint8List();
    return MemoryImage(bytes);
  },
);
