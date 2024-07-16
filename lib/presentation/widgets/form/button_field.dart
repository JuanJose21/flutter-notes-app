import 'package:flutter/material.dart';

class ButtonField extends StatelessWidget {
  const ButtonField({
    super.key,
    this.onPressed,
    this.text = 'Guardar',
  });

  final VoidCallback? onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      margin: const EdgeInsets.symmetric(vertical: 12),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            backgroundColor: Colors.orange[100]),
        child: Text(text),
      ),
    );
  }
}
