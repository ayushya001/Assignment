import 'package:flutter/material.dart';

// Import package
import 'package:flutter/material.dart';
import 'package:flutter_font_icons/flutter_font_icons.dart';

class Scrolldesign extends StatelessWidget {
  const Scrolldesign({Key? key}) : super(key: key);

  Container buildCropBox(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.15,
      width: MediaQuery.of(context).size.width * 0.25,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.12,
            width: MediaQuery.of(context).size.width * 0.1,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/leaf2.png"),
                // fit: BoxFit.fill
              ),
            ),
          ),
          Text(
            "Know your crop",
            style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
          ),
        ],
      ),
      margin: EdgeInsets.only(right: 9),
    );
  }

  Container buidCropimage(BuildContext context,String name,String email,String profile,String image) {
    return Container(
      height: MediaQuery
          .of(context)
          .size
          .height * 0.67,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage(profile),
                  ),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(email)
                  ],
                ),
                Spacer(),
                Icon(Icons.more_horiz)
              ],
            ),
          ),
          Container(
            height: MediaQuery
                .of(context)
                .size
                .height * 0.35,
            width: double.infinity,
            child: Image.asset(
              image,
              fit: BoxFit.fill,

            ),
          ),
          SizedBox(height: 8),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.favorite_border_outlined),
              ),
              Text("110"),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 8),
                child: Icon(Icons.messenger_outline),
              ),
              Text("32"),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 5, right: 8),
                child: Icon(Icons.bookmark_border),
              )
            ],
          ),
          SizedBox(height: 8),
          Container(
            height: 1.5,
            width: double.infinity,
            color: Color(0xFFDEFABB),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(name,
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18
              ),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Agrichikitsa is best solutin for agricultural Needs.",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  fontSize: 16
              ),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: MediaQuery
                  .of(context)
                  .size
                  .height * 0.05,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Write a comment",
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: EdgeInsets.symmetric(
                      horizontal: 10, vertical: 8),
                ),
              ),
            ),
          ),
          SizedBox(height: 8),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.15,
            color: Colors.white,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage('assets/images/person.png'),
                        // backgroundColor: Colors.white,
                        // child: Icon(Icons.person, size: 20),
                      ),
                      SizedBox(width: 8),
                      Text(
                        "What's happening",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Icon(EvilIcons.image, size: 30),
                      SizedBox(width: 8),
                      Icon(
                        MaterialCommunityIcons.gif,
                        size: 30,
                      ),
                      SizedBox(width: 8),
                      Icon(Feather.smile),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.18,
                          height: MediaQuery.of(context).size.height * 0.040,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(12)),
                          child: Center(
                            child: Text(
                              "Post",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 6),
          Container(
            height: MediaQuery.of(context).size.height * 0.28,
            width: double.infinity,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 18),
                  child: Text(
                    "New Jankari Update",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 24),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.018,
                ),
                Container(
                  color: Colors.white,
                  height: MediaQuery.of(context).size.height * 0.19,
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 9,
                        ),
                        buildCropBox(context),
                        SizedBox(
                          width: 9,
                        ),
                        buildCropBox(context),
                        SizedBox(
                          width: 9,
                        ),
                        buildCropBox(context),
                        SizedBox(
                          width: 9,
                        ),
                        buildCropBox(context),
                        SizedBox(
                          width: 9,
                        ),
                        buildCropBox(context),
                        SizedBox(
                          width: 9,
                        ),
                        buildCropBox(context),
                        SizedBox(
                          width: 9,
                        ),
                        buildCropBox(context),
                        SizedBox(
                          width: 9,
                        ),
                        buildCropBox(context),
                        SizedBox(
                          width: 9,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.15,
                          width: MediaQuery.of(context).size.width * 0.25,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.12,
                                width: MediaQuery.of(context).size.width * 0.1,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/blackleaf2.png"),
                                  ),
                                ),
                              ),
                              Text(
                                "Know your crop",
                                style: TextStyle(
                                    fontSize: 10, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 6),
          buidCropimage(context, "Ayush kumar", "@ayush", "assets/images/person.png", "assets/images/crop2.jpg"),
          SizedBox(height: 6),
          Container(
            height: MediaQuery.of(context).size.height * 0.24,
            width: double.infinity,
            color: Colors.white,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(8),
                  child:Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          radius: 20,
                          backgroundImage: AssetImage("assets/images/logo.png"),
                        ),
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Agrichikitsa",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text("@agc")
                        ],
                      ),
                      Spacer(),
                      Icon(Icons.more_vert)
                    ],
                  ),
                ),
                SizedBox(height: 6,),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("On a first-time visit to New Orleans,there's so much to see and do",
                  style: TextStyle(
                    fontSize: 16
                  ),),
                ),
                SizedBox(height: 6,),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.favorite_border_outlined),
                    ),
                    Text("110"),
                    Padding(
                      padding: const EdgeInsets.only(left: 15,right:8),
                      child: Icon(Icons.messenger_outline),
                    ),
                    Text("32"),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5,right: 8),
                      child: Icon(Icons.bookmark_border),
                    )
                  ],
                ),
                SizedBox(height: 6,),
              ],

            ),
          ),
          SizedBox(height: 6),
          buidCropimage(context, "Atil singh", "@atil", "assets/images/person2.jpg", "assets/images/crops3.jpg")
        ],
      ),
    );
  }
}
