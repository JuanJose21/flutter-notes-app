import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String title;
  final TextEditingController control;

  const InputField({
    super.key,
    this.title = '',
    required this.control,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12),
      child: TextFormField(
        controller: control,
        decoration: InputDecoration(
          labelText: title,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Por favor ingrese un valor';
          }
          return null;
        },
      ),
    );
  }
}
