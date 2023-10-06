import 'package:flutter/material.dart';
import 'package:images_picker/images_picker.dart';
import 'package:google_fonts/google_fonts.dart';
import 'story_widgets.dart';
import 'post_widgets.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Instagram',
      debugShowCheckedModeBanner: false,
      home:  Scaffold(
        backgroundColor: Colors.white,
        appBar: 
        AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Image.asset(
            'assets/images/images.png',
            height: 30,
            ),
            actions: [
              IconButton(
            onPressed: () {}, icon: const Icon(Icons.favorite_border,color: Colors.black,),
          ),
                        IconButton(
            onPressed: () {}, icon: const Icon(Icons.search,color: Colors.black,),
          ),
                        IconButton(
            onPressed: () {}, icon: const Icon(Icons.send_outlined,color: Colors.black,),
          ),
          
            ],
        ),
        body: SingleChildScrollView(
                child: Column(

                            children:  [
                                  StoryWidget(),
                                  PostWidget(),
                          ]
                    ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
         // unselectedItemColor: Colors.green.shade700,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const  [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.movie_creation), label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.library_add), label: 'Add Photo'),
            BottomNavigationBarItem(icon: Icon(Icons.lock), label: 'Favoris'),
            BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: 'Profil'),
          ],
        ),
      ),
    );
  }
}
