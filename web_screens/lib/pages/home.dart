import 'package:flutter/material.dart';
import 'package:web_screens/pages/profile.dart';
import 'color_schemes.g.dart';

void main() => runApp(const Landing());

class Landing extends StatelessWidget {
  const Landing({super.key});

  static const appTitle = 'SocialDanz';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
      // darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
      title: appTitle, 
      home: const MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title)
        ),
      body: Container(
        decoration: BoxDecoration(color: Colors.indigo[900]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
          ElevatedButton(
            onPressed: () {
            },
            child: const Text('Button', style: TextStyle(color: Colors.white),)
            )
          ],
        )
      ),
      drawer: Drawer(
        backgroundColor: Colors.indigo[900],
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
             const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 0, 10, 119),
              ),
              child: Text('Options', style: TextStyle(color: Colors.white),),
            ),
            ListTile(
              title: const Text('Classes', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Groups', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Settings', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Profile', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Profile() ));
              },
            ),
          ],
        ),
      ),
    );
  }
}