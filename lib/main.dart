import 'dart:io';
import 'story_widgets.dart';
import 'post_widgets.dart';
import 'package:flutter/material.dart';
import 'package:images_picker/images_picker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Instagram',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String? imagePath;

  Future<void> _pickImage() async {
    List<Media>? res = await ImagesPicker.pick(count: 1);
    if (res != null && res.isNotEmpty) {
      setState(() {
        imagePath = res[0].path;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Image.asset(
          'assets/images/images.png',
          height: 30,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite_border,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.send_outlined,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
                                  StoryWidget(),
                                  PostWidget(),
            // Vos autres widgets ici
            if (imagePath != null)
              Image.file(File(imagePath!)),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.movie_creation), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.library_add), label: 'Add Photo'),
          BottomNavigationBarItem(icon: Icon(Icons.lock), label: 'Favoris'),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: 'Profil'),
        ],
        onTap: (index) {
          if (index == 2) {
            // Lorsque le bouton "Add Photo" est pressé
            _pickImage();
          }
        },
      ),
    );
  }
}

