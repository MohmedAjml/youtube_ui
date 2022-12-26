import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'main.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: const Appbaryt(),
    debugShowCheckedModeBanner: false,
    darkTheme: ThemeData.dark(),
  ));
}

class Appbaryt extends StatefulWidget {
  const Appbaryt({super.key});

  @override
  State<Appbaryt> createState() => _AppbarytState();
}

class _AppbarytState extends State<Appbaryt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          leading: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Image.asset('assets/youtubeicon.png'),
      ),
          actions: [
            const SizedBox(
              width: 0.5,
            ),
            IconButton(
              icon: const Icon(Icons.cast),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.notification_add_outlined),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
            const CircleAvatar(radius: 15,foregroundImage: NetworkImage('https://avatars.githubusercontent.com/u/113675533?s=400&u=fbc58dcb8f6d07244ace4240ebd55d23c09456c7&v=4'),)
          ],
        ),
        body: const Video_Home(),
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.red,
          selectedItemColor: Colors.red,
          items: [
            const BottomNavigationBarItem(
                icon: Icon(Icons.home_filled), label: 'Home'),
            const BottomNavigationBarItem(
                icon: Icon(Icons.video_collection), label: 'Shorts'),
            BottomNavigationBarItem(
                icon: Stack(
                  alignment: Alignment.center,
                  children: [
                    const CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 15,
                    ),
                    CircleAvatar(
                        radius: 18,
                        backgroundColor: Colors.black.withOpacity(.7),
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                        ))
                  ],
                ),
                label: ''),
            const BottomNavigationBarItem(
                icon: Icon(Icons.subscriptions), label: 'Subscriptions'),
            const BottomNavigationBarItem(
                icon: Icon(Icons.library_add_check), label: 'Library'),
          ],
        ));
  }
}