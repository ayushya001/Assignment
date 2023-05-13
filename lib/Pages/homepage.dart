import 'package:assignment1/Pages/scrolldesign.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);


  Widget buildBox(BuildContext context, String text) {
    return Container(
      width: MediaQuery.of(context ).size.width * 0.2,
      height: MediaQuery.of(context).size.height * 0.045,
      decoration: BoxDecoration(

        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: Colors.black,
          width: 1.0,
        ),
      ),
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: Colors.black,
            // fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.black,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',

            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble_outline_sharp),
              label: 'chat',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_circle_outline),
              label: 'AG+',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.access_time),
              label: 'Jankari',
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
        ),
      body: Column(
        children: [
          SafeArea(
            child: Container(
              height: MediaQuery.of(context).size.height*0.18,
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8,left: 10),
                        child: CircleAvatar(
                          radius: 25.0,
                          backgroundImage: AssetImage('assets/images/logo.png'),
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:Container(
                          height:
                          MediaQuery.of(context).size.height * 0.035,
                          width: MediaQuery.of(context).size.width * 0.1,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  "assets/images/notification.png"),

                            ),
                          ),
                        ),


                        // Icon(Icons.notification_add_rounded,
                        // size: 30),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          radius: 15.0,
                          backgroundColor: Colors.brown,

                        ),
                      ),


                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height*0.002,),
                  Container(
                    color: Colors.white,
                    height: MediaQuery.of(context).size.height*0.08,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Container(
                              width: MediaQuery.of(context).size.width*0.2,
                              height:  MediaQuery.of(context).size.height*0.045,
                              
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(5)
                              ),
                              child: Center(
                                child: Text(
                                  "All",
                                  style: TextStyle(
                                    color: Colors.white
                                  ),
                                ),
                              ),
                            ),
                          ),
                          buildBox(context, "Category"),
                          buildBox(context, "Category"),
                          buildBox(context, "Category"),
                          buildBox(context, "Category"),
                          buildBox(context, "Category"),
                          buildBox(context, "Category"),


                        ],
                      ),
                    ),
                  )

                ],
              ),
            ),
          ),
          Expanded(
              child:Container(
                decoration: BoxDecoration(
                  color:  Color(0xFFDEFABB),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 6.0),
                  child: Scrolldesign(),
                ),
              )
          ),

        ],
      ),
    );
  }
}
