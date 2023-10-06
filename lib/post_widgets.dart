import 'package:flutter/material.dart';


class PostWidget extends StatelessWidget {
  PostWidget({ Key? key}) : super(key: key);

  final List postItems = [
    {
      "pseudo" : "Tanguy",
       "photo" : "assets/images/post/1.jpeg",
       "profil" : "assets/images/profil/profil1.jpg",
       "description" : "Always niver give up"
    },
        {
      "pseudo" : "Fania",
       "photo" : "assets/images/post/2.jpeg",
       "profil" : "assets/images/profil/profil2.jpg",
       "description" : "Always niver give up"
    },
        {
      "pseudo" : "Carel",
       "photo" : "assets/images/post/3.jpeg",
       "profil" : "assets/images/profil/profil3.jpg",
       "description" : "Always niver give up"
    },
        {
      "pseudo" : "Steve",
       "photo" : "assets/images/post/4.jpeg",
       "profil" : "assets/images/profil/profil4.jpg",
       "description" : "I don't like no since"
    },
        {
      "pseudo" : "Arnold",
       "photo" : "assets/images/post/5.jpg",
       "profil" : "assets/images/profil/profil5.jpg",
       "description" : "I l've you"
    },
    
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children:  postItems.map((post)  {
        return  Column(
          children: [
            Container(
              height: 50,
              margin: const EdgeInsets.only(top:  10),
              padding:  const EdgeInsets.symmetric(horizontal: 10),
              child:  Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(post['profil']),
                  ),
                  const SizedBox(width: 10),
                  Text(post['pseudo'], style: const TextStyle(
                     fontWeight:  FontWeight.bold,
                     
                  ),),
                   const SizedBox(width: 5),
                  Image.asset('assets/images/1.png', height: 25,),
                  Expanded(
                    child: Container(),
                    ),
                  IconButton(onPressed:  ()  {}, icon: const Icon(Icons.more_horiz)),
          ],
              ),
            ),  
               Container(
          height: 300,
          decoration: BoxDecoration(
            image:  DecorationImage(
              image: AssetImage(post['photo']),
              fit:  BoxFit.cover,
            ),
          ),
     ),
           Row(
            children: [
                IconButton(onPressed:  ()  {}, icon: const Icon(Icons.favorite_outline)),
                 IconButton(onPressed:  ()  {}, icon: const Icon(Icons.comment)),
                  IconButton(onPressed:  ()  {}, icon: const Icon(Icons.send_outlined)),
                    Expanded(
                    child: Container(),
                    ),
                   IconButton(onPressed:  ()  {}, icon: const Icon(Icons.bookmark_outline)),
            ],
          ),
       
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: 
                        Row(
              children: [
                CircleAvatar(
                  radius: 10,
                  backgroundImage: AssetImage(post['profil']),
                ),
               
                const SizedBox(width: 10),
                RichText(
                  text:  TextSpan(
                    text : 'Aimé par ',
                    style:  DefaultTextStyle.of(context).style,
                    children: [
                      TextSpan(
                        text:   post ['pseudo'],
                        style: const TextStyle(
                          fontWeight:  FontWeight.w600,
                        ),
                      ),
                      const TextSpan(
                        text:   ' et  ',
                        ),
                      const TextSpan(
                        text:   ' 500 autres personnes ',
                        style: TextStyle(
                          fontWeight:  FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  ),
              ],
          ),
            ),
            const SizedBox( height:  5),
          ],
        );       
      
      }).toList(),
    );
  }
}

