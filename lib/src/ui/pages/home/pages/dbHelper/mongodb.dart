import 'dart:developer';

import 'package:app_biblioteca/src/ui/pages/home/pages/MongoDB/constant.dart';
import 'package:mongo_dart/mongo_dart.dart';

class MongoDatabase {
  static var db, userCollection;
  //Create static connect function to connect with database
  static connect() async {
    db = await Db.create(MONGO_CONN_URL);
    await db.open();
    inspect(db);
    userCollection = db.collection(USER_COLLECTION);
  }
}
