import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ColorSelectView extends StatelessWidget {
  const ColorSelectView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(Icons.menu, color: Colors.black),
        title: Image.asset(
          'images/campaigns.png',
          height: 40,
        ),
        centerTitle: true,
        actions: const [
          Icon(Icons.shopping_cart, color: Colors.black),
          SizedBox(width: 10),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_library),
            label: 'Video Visualizer',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label: 'Store Locator',
          ),
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Container(
            // color: Colors.blue,
            height: 120,
            width: double.infinity,
            child: SizedBox(
              height: 120,
              width: double.infinity,
              child: Image.asset(
                "images/ss1.jpg",
                height: 120,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: 170,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Colors.white70, Colors.white]),
                    color: Colors.grey[200],

                    border: Border.all(
                      color: Colors.white,
                      width: 3,
                    ),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        offset: const Offset(
                          1.0,
                          1.0,
                        ), //Offset
                        blurRadius: 2.0,
                        spreadRadius: 1.0,
                      ),
                    ], //B
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Text(
                    "All Colors",
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: 170,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Colors.white70, Colors.white]),
                    color: Colors.grey[200],

                    border: Border.all(
                      color: Colors.white,
                      width: 3,
                    ),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        offset: const Offset(
                          1.0,
                          1.0,
                        ), //Offset
                        blurRadius: 2.0,
                        spreadRadius: 1.0,
                      ),
                    ], //B
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Text(
                    "Trending Colors",
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Container(
              height: 100,
              width: double.infinity,
              child: SingleChildScrollView(

                scrollDirection: Axis.horizontal,

                child: Row(
                  children: List.generate(

                      5,
                      (index) => Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: Container(
                              alignment: Alignment.bottomLeft,
                              padding: EdgeInsets.only(left: 4, bottom: 4),
                              height: 70,
                              width: MediaQuery.of(context).size.width * 0.19,
                              color: Colors.redAccent,
                              child: Text(
                                "Red\nAccent",
                                style: TextStyle(
                                    fontSize: 12, color: Colors.white),
                              ),
                            ),
                          )),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Container(
              color: Colors.grey,
              height: 3,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 5,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    childAspectRatio: 0.75),
                itemCount: 15,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        alignment: Alignment.bottomLeft,
                        height: 70,
                        width: 70,
                        color: Colors.redAccent,
                      ),
                      Text(
                        "Red Accent",
                        style: TextStyle(fontSize: 12, color: Colors.black),
                      ),
                    ],
                  );
                }),
          ),
          SizedBox( 
            height: 70,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.arrow_drop_down_outlined,color: Colors.blueAccent,),
                Text("LOAD MORE",style: TextStyle(color: Colors.blueAccent,fontSize: 14),)
              ],
            ),
          )
        ],
      ),
    );
  }
}
