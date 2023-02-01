import 'package:flutter/material.dart';
import 'color_schemes.g.dart';

void main() => runApp(const Profile());

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
      // theme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
      title: 'Profile',
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          backgroundColor: Colors.indigo[900],
          shadowColor: Colors.black,
          title: const Text('Profile'),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Expanded(child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('images/person.jpg'),
                  radius: 100,
                ),
                Text('You', style: TextStyle(fontSize: 20),),
                Text('Name: Your Full Name (obviously)', style: TextStyle(fontSize: 20)),
                Text('Age: Your Age', style: TextStyle(fontSize: 20)),
                Text('Email: Your Email', style: TextStyle(fontSize: 20)),
                Text('Dance Style: Break Dance', style: TextStyle(fontSize: 20)),
              ],
            ),
            ),
            Center(
              child: FadeInImage.assetNetwork(
                placeholder: 'images/loading.gif',
                image: 'images/dance_profile.jpg',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
