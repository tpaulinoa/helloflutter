import 'package:flutter/material.dart';
import 'package:helloflutter/app_controller.dart';
import 'package:helloflutter/login_page.dart';
import 'home_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: AppController.instance,
        builder: (context, child) {
          return MaterialApp(
            theme: ThemeData(
                primarySwatch: Colors.blue,
                brightness: AppController.instance.isDarkTheme
                    ? Brightness.dark
                    : Brightness.light),
            home: LoginPage(),
            initialRoute: '/',
            routes: {
              //'/': (context) => LoginPage(),
              '/home': (context) => HomePage(),
            },
          );
        });
  }
}
