import 'package:flutter/material.dart';
import 'package:ttscord/core/application/dataclasses/with_origin.dart';
import 'package:ttscord/core/domain/datamodel/character_profile.dart';
import 'package:ttscord/core/presentation/widgets/character_avatar.dart';

class AvatarOnBanner extends StatelessWidget {
  static const _bannarHeight = 160.0;
  static const _avatarRadius = 48.0;
  static const _avatarCenter = Offset(_avatarRadius * 1.5, _bannarHeight);

  final WithOrigin<CharacterProfile>? originatedProfile;

  const AvatarOnBanner({this.originatedProfile, super.key});

  @override
  Widget build(BuildContext context) {
    final profile = originatedProfile?.content;

    return Padding(
      padding: EdgeInsetsGeometry.only(bottom: _avatarRadius * 1.5),
      child: Stack(
        children: [
          ClipPath(
            clipper: _InvertedCircleClipper(
              radius: _avatarRadius * 1.1,
              center: _avatarCenter,
            ),
            child: Container(
              width: double.maxFinite,
              height: _bannarHeight,
              color: profile?.bannarColor ?? Colors.indigoAccent,
            ),
          ),

          Transform.translate(
            offset: _avatarCenter - Offset(_avatarRadius, _avatarRadius),
            child:
                originatedProfile != null
                    ? CharacterAvatar(
                      radius: _avatarRadius,
                      originatedProfile!.propagate((e) => e.iconSource),
                    )
                    : CircleAvatar(radius: _avatarRadius),
          ),
        ],
      ),
    );
  }
}

class _InvertedCircleClipper extends CustomClipper<Path> {
  final double radius;
  final Offset center;

  const _InvertedCircleClipper({required this.radius, required this.center});

  @override
  Path getClip(Size size) {
    return Path()
      ..addOval(Rect.fromCircle(center: center, radius: radius))
      ..addRect(Rect.fromLTWH(0.0, 0.0, size.width, size.height))
      ..fillType = PathFillType.evenOdd;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
