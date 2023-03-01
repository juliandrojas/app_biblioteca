import 'dart:developer';
import 'package:mongo_dart/mongo_dart.dart';
import 'package:app_biblioteca/src/ui/pages/home/pages/MongoDB/constant.dart';

class MongoDatabase {
  static var db, userCollection;
  //Static connection function to connect with database
  static connect() async {
    //Connection URL we stored in constant
    db = await Db.create(MONGO_CONN_URL);
    //Open the connection
    await db.open();
    //Inspect the db
    inspect(db);
    //Collection name we stored in constant
    userCollection = db.collection(USER_COLLECTION);
  }

  //Displaying data
  static Future<List<Map<String, dynamic>>> getQueryData() async {
    final data = await userCollection.find().toList();
    return data;
  }
}
