// ignore_for_file: file_names

import 'package:flutter/material.dart';

class MessengerHome extends StatefulWidget {


  const MessengerHome({super.key});

  @override
  State<MessengerHome> createState() => _MessengerHomeState();
}

class _MessengerHomeState extends State<MessengerHome> {
  bool isDarkMode = true ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isDarkMode ? Colors.black : Colors.white,
      appBar: AppBar(
        titleSpacing: 8,
        elevation: 0,
        backgroundColor: isDarkMode ? Colors.black : Colors.white,
        leading: ButtonBar(
          children: [
            IconButton(
                onPressed: (){

                },
                icon: const Icon(
                  Icons.menu,
                  color: Colors.blue,
                ),

            ),
          ],
        ),

        title:  Text(
          'Chats',
          style: TextStyle(
            color:  isDarkMode ? Colors.white : Colors.black ,
            fontWeight: FontWeight.bold
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
                setState(() {
                  isDarkMode = !isDarkMode ;
                });
            },
            color: Colors.blue,
            icon:  CircleAvatar(
              backgroundColor: isDarkMode ? Colors.black : Colors.white10 ,
              child: Icon(
                color: Colors.blue,
                size: 20,
                isDarkMode ? Icons.light_mode : Icons.dark_mode,
              ),
            ),
          ),
          IconButton(
            color: isDarkMode ? Colors.black : Colors.white,
            icon:  CircleAvatar(
              backgroundColor: isDarkMode ? Colors.black : Colors.white10,
              child: const Icon(
                color: Colors.blue,
                size: 20,
                Icons.edit,
              ),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        //padding all contents of the body section
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            //formatting contents in column shape
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0,right:8.0 ,bottom:8.0 ),
                child: Container(
                  decoration: BoxDecoration(
                    color: isDarkMode ? Colors.white10 : Colors.grey[200],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    decoration:  InputDecoration(
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      hintText: 'Search',
                      hintStyle: TextStyle(
                          color: isDarkMode ? Colors.white : Colors.black,
                          fontSize: 14
                      ),
                      contentPadding: const EdgeInsetsDirectional.only(top: 5),
                      prefixIcon: Icon(
                        Icons.search,
                        color: isDarkMode ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                ),
              ), //search field section
              const SizedBox(
                height: 10,
              ),

              SizedBox(
                height: 110,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) =>  storyRowBuilder(),
                    separatorBuilder:(context, index) => const SizedBox(
                      width: 10,
                    ) ,
                    itemCount: 20,
                ),
              ), //people stories section
              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
               shrinkWrap: true,
               scrollDirection: Axis.vertical,
               itemBuilder: (context, index) => chatsBuilder(),
               separatorBuilder: (context, index) => const SizedBox(
                 height: 10,
               ),
               itemCount: 40,
                ),
            ],
          ),
        ),
      ),


      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: isDarkMode ? Colors.black : Colors.white,
          selectedItemColor: Colors.blue,
          selectedLabelStyle: const TextStyle(color: Colors.blue),
          unselectedItemColor: Colors.grey,
          unselectedLabelStyle: const TextStyle(color: Colors.grey),

          items: const <BottomNavigationBarItem> [

            BottomNavigationBarItem(
                icon: Icon(
                  Icons.chat,
                ),
              label: 'Chats',

            ),
            BottomNavigationBarItem(
                icon: Icon(
                    Icons.videocam_rounded,
                ),
              label: 'Calls',

            ),
            BottomNavigationBarItem(

                icon: Icon(
                    Icons.people_alt,
                ),
              label: 'People'

            ),
          ]
      )
    );
  }

  Widget storyRowBuilder() => Row(
        children: [
          Container(
            width: 60,
            height: 110,
            alignment: Alignment.center,
            child: Column(
              children: [
                IconButton(
                  iconSize: 50,
                  icon: Stack(
                    alignment: AlignmentDirectional.bottomEnd,
                    children: const [
                      CircleAvatar(
                        radius: 25,
                        backgroundImage: NetworkImage(
                            'https://avatars.githubusercontent.com/u/104579836?v=4'),
                      ),
                      CircleAvatar(
                        radius: 6,
                        backgroundColor: Colors.green,
                      ), // online dot shape
                    ],
                  ),
                  onPressed: () {},
                ),
                 Text(
                  'Hassan Daowd ',
                  style: TextStyle(
                    color: isDarkMode ? Colors.white : Colors.black,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      );

  Widget chatsBuilder() => Column(
    children: [
      Row(
            children: [
              IconButton(
                iconSize: 50,
                icon: Stack(
                  alignment: AlignmentDirectional.bottomEnd,
                  children: const [
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(
                          'https://avatars.githubusercontent.com/u/104579836?v=4'),
                    ),
                    CircleAvatar(
                      radius: 6,
                      backgroundColor: Colors.green,
                    ), // online dot shape
                  ],
                ),
                onPressed: () {},
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text(
                    'Hassan Daowd',
                    style: TextStyle(
                      color: isDarkMode ? Colors.white : Colors.black,
                        fontWeight: FontWeight.bold,
                        overflow: TextOverflow.ellipsis,
                        fontSize: 17),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children:  [
                      SizedBox(
                        width: 250,
                        child: Text(
                          'Welcome to my Chat',
                          style: TextStyle(
                            color: isDarkMode ? Colors.white : Colors.black,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ), //sized text for the messages contents
                      const SizedBox(
                        width: 10,
                      ),
                      CircleAvatar(
                        radius: 3,
                        backgroundColor: isDarkMode ? Colors.white : Colors.black,
                      ), //dot of time beginning
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                          '02:45',
                        style: TextStyle(
                          color: isDarkMode ? Colors.white : Colors.black,
                        ),
                      ),
                      //message time
                    ],
                  ),
                ],
              ),
            ],
          ),
      const SizedBox(
        height: 10,
      ),
    ],
  );
}
/*IconButton(
          icon: const CircleAvatar(
            backgroundImage: NetworkImage(
                'https://avatars.githubusercontent.com/u/104579836?v=4'),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),*/
