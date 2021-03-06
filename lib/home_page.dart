import 'package:flutter/material.dart';
import 'package:helloflutter/app_controller.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }

}

class HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: ClipRRect(
                borderRadius: BorderRadius.circular(60),
                  child: Image.network('https://avatars.githubusercontent.com/u/870603?v=4')
              ),
              accountName: Text('Thiago'),
              accountEmail: Text('myemail@example.com')
            ),
          ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              subtitle: Text('Go to home'),
              onTap: () {
                print('going to home...');
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              subtitle: Text('Logout!'),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/');
              },
            )
          ],
        )
      ),
      appBar: AppBar(
        title: Text('blablabla'),
        actions: [CustomSwitch()],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Contador: $counter'),
            CustomSwitch(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  color: Color(0xff00a31e),
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Color(0xff22f047),
                ),
                Container(
                  width: 50,
                  height: 50,
                  color: Color(0xff82ff98),
                )
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_box),
        onPressed: () {
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}

class CustomSwitch extends StatelessWidget {
  const CustomSwitch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.isDarkTheme,
      onChanged: (value) {
        AppController.instance.changeTheme();
      },
    );
  }
}
