import 'package:flutter/material.dart';

class ContentRegion extends StatelessWidget {
  final String title;
  final Widget? child;

  const ContentRegion({required this.title, this.child, super.key});

  @override
  Widget build(BuildContext context) => Expanded(
    child: Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(25)),
        color: Theme.of(context).colorScheme.surfaceContainer,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20, left: 30, right: 30),
            child: Text(title, style: Theme.of(context).textTheme.titleLarge),
          ),
          child ?? Container(),
        ],
      ),
    ),
  );
}
