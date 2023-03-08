import 'package:app_biblioteca/src/ui/pages/home/home_page.dart';
import 'package:app_biblioteca/src/ui/pages/home/pages/controllers/search_book_controller.dart';
import 'package:flutter/material.dart';

class ListBooks extends StatelessWidget {
  final SearchBookController controllerSearchBook;

  const ListBooks({required this.controllerSearchBook});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Libros Disponibles"),
        backgroundColor: greenUTS,
      ),
      body: Center(
        child: Text(controllerSearchBook.myTextController.text),
      ),
      /*body: SafeArea(
            child: FutureBuilder(
                future: MongoDatabase.getQueryData(),
                builder: (context, AsyncSnapshot snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else {
                    if (snapshot.hasData) {
                      /*return Center(
                        child: Text(controllerSearchBook.myTextController.text),
                      );*/

                      return ListView.builder(
                        itemCount: snapshot.data.length,
                        itemBuilder: (context, index) {
                          return displayData(
                              MongoDBModel.fromJson(snapshot.data[index]));
                        },
                      );
                    } else {
                      return const Center(
                        child: Text("Data Not Found"),
                      );
                    }
                  }
                }))*/
    );
  }

  /*Widget displayData(MongoDBModel data) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "${data.titulo}",
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 10),
            Text(
              "${data.autor}",
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }*/
}
