import 'dart:developer';
import 'package:app_biblioteca/src/ui/pages/home/pages/dbHelper/constant.dart';
import 'package:mongo_dart/mongo_dart.dart';

class MongoDatabase {
  static var db, userCollection;
  //Create static connect function to connect with database
  static connect() async {
    db = await Db.create(MONGO_DB_URI);
    await db.open();
    inspect(db);
    userCollection = db.collection(USER_COLLECTION);
  }

  //Create a function for displaying data
  static Future<List<Map<String, dynamic>>> getQueryData() async {
    final data = await userCollection.find().toList();
    return data;
  }
}
