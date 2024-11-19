import 'package:flutter/material.dart';

class ProductOderView extends StatelessWidget {
  ProductOderView({super.key});
  final List<String> sliderImages = [
    'images/slider_3.png',
    'images/slider_3.png',
    'images/ss1.jpg',
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // color: Colors.blue,
              height: 300,
              child: Stack(
                children: [
                  SizedBox(
                    height: 200,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(22.0),
                      child: Image.asset(
                        "images/ss1.jpg",
                        height: 180,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    left: -10,
                    child: Image.asset(
                      "images/bucket.png",
                      width: 200,
                      height: 200,
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
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                width: double.infinity,
                child: Text(
                    "Dummy text about the paint,Lorem ipsum dalor sit amet, consectetuer adipiscing elit, sed daiam nonummmy nibh euismad tincidunt at laoreet dolare magna aliquam erat volupat."),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(

                sliderImages.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: SizedBox(
                      width: 100,
                      height: 100,
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
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Text('SAR - 120.00 ',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold)),
                  Text('inc. VAT',
                      style: TextStyle(
                        fontSize: 16,
                      )),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 4),
              child: Container(height: 1,color: Colors.grey[400],),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: const Text("Estimated day to deliver : 24 sep-30 sep"),
            ),
            SizedBox(
              height: 80,
              width: double.infinity,
              child: Center(
                child: Container(
                  height: 40,
                  width: 150,

                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Checkout',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                    style: ButtonStyle(
                        backgroundColor:WidgetStatePropertyAll(Colors.blueAccent),
                        shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                          side: BorderSide(color: Colors.white),

                          borderRadius: BorderRadius.circular(12),

                        ))
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
