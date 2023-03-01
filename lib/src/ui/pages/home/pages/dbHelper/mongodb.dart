import 'dart:developer';
import 'package:app_biblioteca/src/ui/pages/home/pages/controllers/search_book_controller.dart';
import 'package:app_biblioteca/src/ui/pages/home/pages/dbHelper/constant.dart';
import 'package:mongo_dart/mongo_dart.dart';

class MongoDatabase {
  static var db, userCollection;
  final SearchBookController controllerSearchBook = SearchBookController();
  //Create static connect function to connect with database
  static connect() async {
    db = await Db.create(MONGO_DB_URI);
    await db.open();
    inspect(db);
    userCollection = db.collection(USER_COLLECTION);
  }

  //Create a function for displaying data
  static Future<List<Map<String, dynamic>>> getQueryData(
      SearchBookController controllerSearchBook) async {
    //First field name (Column) second will be value.
    final data = await userCollection
        .find(where.eq('titulo', controllerSearchBook.myTextController.text))
        .toList();
    return data;
  }
}
