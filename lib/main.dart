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
  final fetchedData = await firestoreService.fetchJobApplication(trckParam);
  runApp(MyApp(fetchedData: fetchedData));
}

class MyApp extends StatelessWidget {
  final JobApplication fetchedData;

  const MyApp({Key? key, required this.fetchedData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(// Use LayoutBuilder to get screen constraints
        builder: (context, constraints) {
      // Get screen width to determine responsive font sizes
      final screenWidth = constraints.maxWidth;

      // Define a base font size based on screen width
      final baseFontSize = screenWidth / 30; // Adjust denominator as needed
      return MaterialApp(
        title: 'The Studio',
        theme: ThemeData(
            textTheme: TextTheme(


          bodySmall: GoogleFonts.montserrat(
              color: Colors.white, fontSize: 16),
          bodyMedium: GoogleFonts.montserrat(
              color: Colors.white, fontSize: 18),
          bodyLarge: GoogleFonts.montserrat(
              color: Colors.white, fontSize: 22),


          displayMedium: GoogleFonts.montserrat(
              color: Colors.white, fontSize: baseFontSize * 0.6),
          displayLarge: GoogleFonts.montserrat(
              color: Colors.black, fontSize: baseFontSize * 0.8),
          displaySmall: GoogleFonts.montserrat(
              color: Colors.white, fontSize: baseFontSize*0.3),


          headlineLarge: GoogleFonts.montserrat(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 32),
          headlineMedium: GoogleFonts.montserrat(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 24),
          headlineSmall: GoogleFonts.montserrat(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 16),


          titleLarge: GoogleFonts.montserrat(
              color: Colors.white, fontSize: 20,),
        )),
        home: SplashScreen(data: fetchedData),
      );
    });
  }
}
