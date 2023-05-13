import 'package:assignment1/Pages/scrolldesign.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }

  Widget buildBox(BuildContext context, String text) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.2,
      height: MediaQuery.of(context).size.height * 0.038,
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
            fontSize: 12,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SafeArea(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.18,
              // color: Colors.yellowAccent,
              color: Color(0x4af3e8c4),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8, left: 10),
                        child: CircleAvatar(
                          radius: 25.0,
                          backgroundImage: AssetImage('assets/images/logo.png'),
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.035,
                          width: MediaQuery.of(context).size.width * 0.1,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image:
                                  AssetImage("assets/images/notification.png"),
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
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.002,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.08,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.2,
                              height: MediaQuery.of(context).size.height * 0.038,
                              decoration: BoxDecoration(
                                  color: Color(0xff048138),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Center(
                                child: Text(
                                  "All",
                                  style: TextStyle(color: Colors.white,
                                  fontSize: 12),
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
          Container(
            height: 1,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Color(0x564d3d3d),
                  width: 1,
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Color(0x6B99B9A2),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 6.0),
                child: Scrolldesign(),
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.08,
            color: Colors.white,
            child: TabBar(
              unselectedLabelColor: Colors.black,
              labelColor: Colors.black,
              labelStyle: TextStyle(fontWeight: FontWeight.normal,
              fontSize: 12),
              tabs: <Widget>[
                Tab(
                  icon: Icon(
                    Feather.home,
                  ),
                  text: "Home",
                ),
                Tab(
                  icon: Icon(Ionicons.chatbox_ellipses_outline),
                  text: "Chat",
                ),
                Tab(
                  icon: Icon(Ionicons.add_circle_outline),
                  text: "AG+",
                ),
                Tab(
                  icon: Icon(Feather.clock),
                  text: "Jankari",
                ),
                Tab(
                  icon: Icon(Feather.settings),
                  text: "Setting",
                ),
              ],
              controller: tabController,
            ),
          ),
        ],
      ),
    );
  }
}
