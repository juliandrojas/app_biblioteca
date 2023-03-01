import 'package:app_biblioteca/src/ui/pages/home/pages/controllers/search_book_controller.dart';
import 'package:flutter/material.dart';
class ListBooks extends StatelessWidget {
  final SearchBookController controllerSearchBook;

  ListBooks({required this.controllerSearchBook});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(controllerSearchBook.myTextController.text),
      ),
    );
  }
}
