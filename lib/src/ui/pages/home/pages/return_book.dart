import 'package:app_biblioteca/src/ui/pages/home/home_page.dart';
import 'package:flutter/material.dart';

class ReturnBook extends StatelessWidget {
  const ReturnBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Devolver Libro"),
        backgroundColor: greenUTS,
      ),
    );
  }
}
