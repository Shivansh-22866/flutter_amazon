import 'package:flutter/material.dart';
import 'package:flutter_amazon/constants/global_var.dart';
import 'package:flutter_amazon/features/auth/screens/auth_screen.dart';
import 'package:flutter_amazon/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Amazon Clone App',
        theme: ThemeData(
            useMaterial3: true,
            scaffoldBackgroundColor: GlobalVariables.backgroundColor,
            colorScheme: const ColorScheme.light(
              primary: GlobalVariables.secondaryColor,
            ),
            appBarTheme: const AppBarTheme(
              elevation: 0,
              iconTheme: IconThemeData(color: Colors.black),
            )),
        onGenerateRoute: (settings) => generateRoute(settings),
        home: Scaffold(
          appBar: AppBar(title: const Text("Amazon Clone App"), backgroundColor: GlobalVariables.secondaryColor,),
          body: Center(
            child: Column(
              children: [
                const Text("Title of the page"),
                Builder(
                  builder: (context) {
                    return ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, AuthScreen.route);
                        },
                        child: const Text("Auth Screen"));
                  }
                ),
              ],
            ),
          ),
        ));
  }
}
