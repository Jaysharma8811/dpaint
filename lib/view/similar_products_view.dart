import 'package:flutter/material.dart';

class SimilarProductsView extends StatelessWidget {
   SimilarProductsView({super.key});
  final List<String> sliderImages = [
    'images/bucket.png',
    'images/bucket.png',
  ];

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              // color: Colors.blue,
              height: 220,
              width: double.infinity,
              child: Stack(
                children: [
                  SizedBox(
                    height: 120,
                    width: double.infinity,
                    child: Image.asset(
                      "images/ss1.jpg",
                      height: 180,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    left: 20,
                    child: Column(
                      children: [
                        Container(
                          color: Colors.blueAccent,
                          width: 100,
                          height: 100,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text("Smooth sea"),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 20,
                    bottom: 20,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          '  Sigma PVA Wallfiller',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: 25,
                          width: 200,
                          color: Colors.grey[400],
                          child: const Text(
                            "  Flat",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "  High quality lime free interior filler",
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 180,
              width: double.infinity,
              child: Center(
                child: Column(
                  children: [
                    Text('You recently viewed Color'),
                    Image.asset("images/bucket.png",
                        height: 150, width: 150, fit: BoxFit.cover),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(


                width: double.infinity,
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.grey[200],

                      border: Border.all(
                        color: Colors.white,
                        width: 3,
                      ),
                   boxShadow:const  [ BoxShadow(
                      color: Colors.grey,
                      offset: const Offset(
                        1.0,
                        1.0,
                      ), //Offset
                      blurRadius: 2.0,
                      spreadRadius: 1.0,
                    ),], //B
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Text("Similar products with this color",style: TextStyle(fontSize: 12, color: Colors.blueAccent, fontWeight: FontWeight.w400),),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(

                sliderImages.length,
                    (index) => Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: SizedBox(
                      width: 150,
                      height: 150,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12.0),

                        child: Image.asset(
                          sliderImages[index],
                          height: 180,
                          fit: BoxFit.fill,
                        ),
                      )),
                ),
              ),
            ),
            SizedBox(
              height: 2,
              width: 250,
                child: Center(child: Container(color: Colors.grey,),))
          ],
        ),
      ),
    );
  }
}
