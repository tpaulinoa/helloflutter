import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(children: [
        SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              'assets/images/background.jpg',
              repeat: ImageRepeat.repeatY,
            )),
        Container(color: Colors.white.withOpacity(0.8)),
        _loginBody(context)
      ]),
    );
  }

  SizedBox _loginBody(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
              width: 100,
              height: 100,
              child: Image.asset('assets/images/logo.png')),
          Container(height: 20),
          Card(
              child: Padding(
            // padding: const EdgeInsets.all(12.0),
            padding:
                const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
            child: Column(
              children: [
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.blue,
                      labelText: 'E-mail',
                      border: OutlineInputBorder()),
                  onChanged: (text) {
                    email = text;
                  },
                ),
                SizedBox(height: 5),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: 'Password', border: OutlineInputBorder()),
                  onChanged: (text) {
                    password = text;
                  },
                ),
                SizedBox(height: 5),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.red),
                    onPressed: () {
                      if (email == 'thiago@eu.com' && password == '123') {
                        Navigator.of(context).pushReplacementNamed('/home');
                      } else {
                        print('LOGIN INV??LIDO');
                      }
                    },
                    child: Text('Login'))
              ],
            ),
          )),
        ]),
      ),
    );
  }
}
