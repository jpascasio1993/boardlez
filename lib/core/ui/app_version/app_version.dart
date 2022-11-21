import 'package:flutter/material.dart';

class AppVersion extends StatelessWidget {
  final String version;
  const AppVersion({Key? key, required this.version}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Text(version, style: theme.textTheme.subtitle2);
  }
}
