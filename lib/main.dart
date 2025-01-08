import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:studio/View/SplashScreen.dart';
import 'package:firebase_core/firebase_core.dart';

import 'Model/JobApplication.dart';
import 'Services/Firestore_service.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  final Uri uri = Uri.base; // Current URL
  final String? trckParam = uri.queryParameters['trck'];

  // Fetch Firestore data based on trckParam
  final FirestoreService firestoreService = FirestoreService();
  final fetchedData =  await firestoreService.fetchJobApplication(trckParam);
  runApp(MyApp(fetchedData: fetchedData));
}

class MyApp extends StatelessWidget {
  final JobApplication fetchedData;

  const MyApp({Key? key, required this.fetchedData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Studio',
      theme: ThemeData(
          textTheme: TextTheme(
            displayMedium: GoogleFonts.montserrat(
              fontSize: 32,
              color: Colors.white
          ),
        displayLarge: GoogleFonts.montserrat(
          fontSize: 46,
          color: Colors.black
        ),
      )),
      home: SplashScreen(data: fetchedData),
    );
  }
}
