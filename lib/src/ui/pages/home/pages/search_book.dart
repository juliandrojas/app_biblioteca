import 'package:app_biblioteca/src/ui/pages/home/pages/list_books.dart';
import 'package:flutter/material.dart';
import 'package:app_biblioteca/src/ui/pages/home/pages/controllers/search_book_controller.dart';

const Color greenUTS = Color.fromRGBO(203, 212, 36, 1);

class SearchBook extends StatelessWidget {
  final SearchBookController controllerSearchBook = SearchBookController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Buscar Libro"),
        backgroundColor: greenUTS,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/monigoteBusqueda.png',
              height: 300.0,
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              controller: controllerSearchBook.myTextController,
              decoration: const InputDecoration(
                labelText: 'Ingrese el nombre del libro',
              ),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                //Si el controlador está vacío
                if (controllerSearchBook.myTextController.text.isEmpty) {
                  //Mostrar el mensaje de alerta
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('Alerta'),
                        content: const Text('Ingresa un libro.'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text('Cerrar'),
                          ),
                        ],
                      );
                    },
                  );
                }
                //Si el controlador NO está vacío
                if (controllerSearchBook.myTextController.text.isNotEmpty) {
                  //Navegamos hacia list_books.dart
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          ListBooks(controllerSearchBook: controllerSearchBook),
                    ),
                  );
                }
              },
              child: const Text(
                'Buscar',
                style: TextStyle(fontSize: 24.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
