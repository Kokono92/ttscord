import 'package:flutter/material.dart';

class LongBarButton extends StatelessWidget {
  final IconData iconData;
  final String text;
  final ButtonStyle? style;
  final VoidCallback? onPressed;

  const LongBarButton({
    required this.iconData,
    required this.text,
    required this.onPressed,
    this.style,
    super.key,
  });

  @override
  Widget build(BuildContext context) => FilledButton(
    onPressed: onPressed,
    style:
        style ??
        FilledButton.styleFrom(
          backgroundColor:
              Theme.of(context).colorScheme.surfaceContainerHighest,
          foregroundColor: Theme.of(context).colorScheme.onSurface,
        ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(iconData, size: 22),
        Padding(
          padding: EdgeInsets.all(4),
          child: Text(text, style: Theme.of(context).textTheme.bodyLarge),
        ),
      ],
    ),
  );
}
