import 'package:app_biblioteca/src/app/app.dart';
import 'package:app_biblioteca/src/app/firebase_options.dart';
import 'package:app_biblioteca/src/ui/pages/home/pages/dbHelper/mongodb.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  //Calling the database when app start inside main()
  await MongoDatabase.connect();
  runApp(const App());
}
