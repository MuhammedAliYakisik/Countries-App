import 'package:countries_app_with_http_dao/State%20Management/CountryProvider.dart';
import 'package:countries_app_with_http_dao/View/AnaSayfa.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) =>CountryProvider())
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData().copyWith(
      
          appBarTheme: const AppBarTheme(
            centerTitle: true,
            systemOverlayStyle: SystemUiOverlayStyle.dark,
            elevation: 0,
            backgroundColor: Colors.transparent
          ),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: AnaSayfa()
      ),
    );
  }
}



