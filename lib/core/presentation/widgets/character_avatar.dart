import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ttscord/core/application/dataclasses/data_or_error.dart';
import 'package:ttscord/core/application/dataclasses/with_origin.dart';
import 'package:ttscord/core/application/provider/image_provider.dart';
import 'package:ttscord/core/domain/datamodel/character_profile.dart';
import 'package:ttscord/core/domain/datamodel/image_source.dart';
import 'package:ttscord/core/presentation/provider/ui_image_provider.dart';

class CharacterAvatar extends ConsumerWidget {
  final WithOrigin<ImageSource> originatedSource;
  final double? radius;

  const CharacterAvatar(this.originatedSource, {this.radius, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final image = ref.watch(imageProvider(originatedSource)).value;

    return (image?.maybeData != null)
        ? CircleAvatar(
          radius: radius,
          backgroundImage:
              ref.watch(uiImageProvider((image as Data<ui.Image>).data)).value,
        )
        : SizedBox.shrink();
  }
}
