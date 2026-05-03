import 'package:flutter/material.dart';

enum ItemType {
  scenario;

  static bool containsName(String name) => values.asNameMap().containsKey(name);
}

class RegisterPage extends StatelessWidget {
  final ItemType itemType;
  final String id;

  const RegisterPage({required this.itemType, required this.id, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Text("${itemType.toString()}: $id"));
  }
}

class RegisterErrorPage extends StatelessWidget {
  const RegisterErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Text("Register error"));
  }
}
