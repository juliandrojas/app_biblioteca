import 'package:app_biblioteca/src/ui/pages/home/pages/profile.dart';
import 'package:app_biblioteca/src/ui/pages/home/pages/return_book.dart';
import 'package:app_biblioteca/src/ui/pages/home/pages/search_book.dart';
import 'package:flutter/material.dart';

const Color greenUTS = Color.fromRGBO(203, 212, 36, 1);

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //Variable para cambiar de página
  int _paginaActual = 0;
  //Lista de Widgets: FORMA FACIL DE HACERLO SI SE TIENEN MAS DE UN ELEMENTO
  List<Widget> _paginas = [SearchBook(), ReturnBook(), Profile()];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: greenUTS,
      ),
      title: 'Material App',
      home: Scaffold(
        //Hacemos una revisión para saber en qué página estamos
        //Si la página actual es 0, que imprima el método PaginaHome
        //Si no, que imprima el método PaginaUsers
        //body: _paginaActual == 0 ? PaginaHome() : PaginaUsers(),
        body: _paginas[_paginaActual],
        //Configuramos los botones con la propiedad bottomNavigationBar
        bottomNavigationBar: BottomNavigationBar(
          //Propiedad onTap para saber a que elemento se le ha hecho tap
          onTap: (index) {
            setState(() {
              //Cambiamos el valor de la variable _paginaActual
              _paginaActual = index;
            });
          },
          //Propiedad currentIndex especifica el elemento en un array ()
          currentIndex: _paginaActual,
          //Array de elementos (Páginas a mostrar)
          items: [
            //Recibe el widget icon
            //Icons.nombre es el nombre del icono
            //Dos propiedades: icon y label
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: greenUTS,
              ),
              label: "Buscar Libro",
            ),
            const BottomNavigationBarItem(
                icon: Icon(
                  Icons.safety_check_outlined,
                  color: greenUTS,
                ),
                label: "Devolver Libro"),
            const BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: greenUTS,
                ),
                label: "Perfil"),
          ],
        ),
      ),
    );
  }
}
