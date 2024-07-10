import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String idNote;
  const DetailScreen({
    super.key,
    required this.idNote,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail'),
      ),
      body: const Center(
        child: Text('Detail Screen'),
      ),
    );
  }
}
