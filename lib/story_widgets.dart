import 'package:flutter/material.dart';



class StoryWidget extends StatelessWidget {
  StoryWidget({ Key? key}) : super(key: key);

  final  List  storyItems =[
        {
      "psedo" : 'Tanguy',
       "profil" : "assets/images/profil/profil1.jpg",
    },
        {
      "psedo" : 'Fania',
       "profil" : "assets/images/profil/profil2.jpg",
    },
        {
      "psedo" : 'Carel',
       "profil" : "assets/images/profil/profil3.jpg",
    },
        {
      "psedo" : 'Steve',
       "profil" : "assets/images/profil/profil4.jpg",

    },
        {
      "psedo" : 'Arnold',
       "profil" : "assets/images/profil/profil5.jpg",

    },
  
   {
      "psedo" : 'Tanguy',
       "profil" : "assets/images/profil/profil1.jpg",
    },
        {
      "psedo" : 'Fania',
       "profil" : "assets/images/profil/profil2.jpg",
    },
        {
      "psedo" : 'Carel',
       "profil" : "assets/images/profil/profil3.jpg",
    },
        {
      "psedo" : 'Steve',
       "profil" : "assets/images/profil/profil4.jpg",

    },
        {
      "psedo" : 'Arnold',
       "profil" : "assets/images/profil/profil5.jpg",

    },
   {
      "psedo" : 'Tanguy',
       "profil" : "assets/images/profil/profil1.jpg",
    },
        {
      "psedo" : 'Fania',
       "profil" : "assets/images/profil/profil2.jpg",
    },
        {
      "psedo" : 'Carel',
       "profil" : "assets/images/profil/profil3.jpg",
    },
        {
      "psedo" : 'Steve',
       "profil" : "assets/images/profil/profil4.jpg",

    },
        {
      "psedo" : 'Arnold',
       "profil" : "assets/images/profil/profil5.jpg",

    },
  
  ];

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child:  Row(
        children:  storyItems.map((story) {
              return             Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              child: Column(
                children: [
                 Stack(
                  alignment: Alignment.center,
                  children: [
                     Image.asset(
                      'assets/images/logo.jpeg',
                      height: 70,
                      ),
                    Image.asset(
                      'assets/images/logo.jpeg',
                      height: 68,
                      ),
                     CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 30,
                    backgroundImage: AssetImage(story['profil']),
                  ),
                  ],
                 ),
                 const SizedBox(height: 8),

                  Text(
                    story['psedo'],
                    maxLines: 1,
                    style: const TextStyle(fontSize: 12,),
                  
                  ),
                  
                ],
              )
           );


        }).toList(), 

        
      ),
    );
  }
}

