import 'package:flutter/material.dart';

class CardNotes extends StatelessWidget {
  final String title;
  final String subtitle;
  final VoidCallback? onPressed;
  final VoidCallback? onTap;

  const CardNotes({
    super.key,
    required this.title,
    this.subtitle = '',
    this.onPressed,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: onTap,
      trailing: IconButton(
        icon: const Icon(Icons.delete),
        onPressed: onPressed,
      ),
    );
  }
}
