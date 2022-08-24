import 'dart:io';

import 'package:flutter/material.dart';
import 'package:z_pay/screens/pages/instructionPage/pageview_ins.dart';
import 'package:flutter/services.dart';
import 'package:z_pay/viewModel/card_provider.dart';
import 'package:z_pay/viewModel/main_provider.dart';
import 'package:provider/provider.dart';
import 'package:z_pay/viewModel/passwordProvider.dart';

class PostHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

int phoneNum = 0;
void main() {
  HttpOverrides.global = PostHttpOverrides();
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent, // transparent status bar
  ));

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ViewModel(),
        ),
        ChangeNotifierProvider(
          create: (_) => CardProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => PassProvider(),
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        unselectedWidgetColor: Colors.white, // <-- your color
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: InstructionView(),
    );
  }
}
