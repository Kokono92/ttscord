import 'package:flutter/material.dart';

class LongBarButton extends StatelessWidget {
  final IconData iconData;
  final String text;

  const LongBarButton({required this.iconData, required this.text, super.key});

  @override
  Widget build(BuildContext context) => FilledButton(
    onPressed: () {},
    style: FilledButton.styleFrom(
      backgroundColor: Theme.of(context).colorScheme.surfaceContainerHighest,
      foregroundColor: Colors.grey,
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
