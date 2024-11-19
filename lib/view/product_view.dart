import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ProductListScreen extends StatefulWidget {
  ProductListScreen({super.key});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  // Sample product data with two different images
  final List<Map<String, String>> products = [
    {
      'image': 'images/ss1.jpg',
      'title': 'Sigma PVA Wallfiller',
      'subtitle': 'Flat',
      'description': 'High quality lime free interior filler',
      'price': '120.00'
    },
    {
      'image': 'images/slider_3.png',
      'title': 'Sigma Concrete Primer',
      'subtitle': '',
      'description': '',
      'price': '105.00'
    },
  ];

  final List<String> sliderImages = [
    'images/slider_3.png',
    'images/slider_3.png',
    'images/ss1.jpg',
  ];
  int _currentSlideIndex = 0;
   CarouselController _carouselController = CarouselController();

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
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                color: Colors.grey[400],
                height: 60,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Products 4 of 12',
                        style:
                            TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    Row(
                      children: [
                        Text(
                          "Filters",
                          style:
                              TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(width: 10),
                        Icon(Icons.filter_list),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Stack(
                children: [
                  SizedBox(height: 230,
                    child: CarouselSlider(
                     // carouselController: _carouselController!,
                      options: CarouselOptions(
                        height: 200,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 3),
                        enlargeCenterPage: true,
                        enableInfiniteScroll: true,
                        viewportFraction: 0.9,
                        onPageChanged: (index, reason) {
                          setState(() {
                            _currentSlideIndex = index;
                          });
                        },
                      ),
                      items: sliderImages.map((imagePath) {
                        return Builder(
                          builder: (BuildContext context) {
                            return ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                imagePath,
                                fit: BoxFit.cover,
                                width: MediaQuery.of(context).size.width,
                                height: 200,
                              ),
                            );
                          },
                        );
                      }).toList(),
                    ),
                  ),
                  // Pagination dots
                  Positioned(
                    bottom: 30,
                    left: 0,
                    right: 0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: sliderImages.asMap().entries.map((entry) {
                        return GestureDetector(
                          // onTap: () => _jumpToSlide(entry.key),
                          child: Container(
                            width: _currentSlideIndex == entry.key ? 12.0 : 8.0,
                            height: 8.0,
                            margin: EdgeInsets.symmetric(horizontal: 4.0),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: _currentSlideIndex == entry.key
                                  ? Colors.blue
                                  : Colors.grey,
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  Positioned(
                    right: 20,
                    bottom: -30,
                    child: Image.asset(
                      'images/bucket.png',
                      width: 160,
                      height: 160,
                    ),
                  ),
                ],
              ),

               Container(
                height: 180,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      color: Colors.blue,
                      width: 120,
                      height: 120,
                    ),
                     SizedBox(width: 30,),
                     Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const  Text(
                          '  Sigma PVA Wallfiller',
                          style:
                              TextStyle(fontSize: 15, fontWeight: FontWeight.bold),

                        ),
                        const SizedBox(height: 5,),
                        Container(
                          height: 20,
                          width: 200,
                          color:  Colors.grey[400],
                          child: const Text("  Flat",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                        ),
                       const SizedBox(height: 5,),
                       const  Text("  High quality lime free interior filler",style: TextStyle(fontSize: 12,),),
                      ],
                    )
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  // shrinkWrap: true,
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    final product = products[index];
                    return ProductCard(
                      imageUrl: product['image']!,
                      title: product['title']!,
                      subtitle: product['subtitle']!,
                      description: product['description']!,
                      price: product['price']!,
                    );
                  },
                ),
              ),
              BottomNavigationBar(
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
            ],
          ),
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  final String description;
  final String price;

  ProductCard({
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    required this.description,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      child: Card(
        color: Colors.grey[400],
        margin: const EdgeInsets.symmetric(vertical: 8),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                // color: Colors.grey,
                width: 200,
                height: 180,

                child: Stack(children: [
                  Image.asset(imageUrl,
                      height: 160, width: 160, fit: BoxFit.cover),
                  Positioned(
                    right: -25,
                    bottom: -30,
                    child: Image.asset(
                      'images/bucket.png',
                      width: 160,
                      height: 160,
                    ),
                  ),
                ]),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.favorite_border),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Column(
                      children: [
                        Text('SAR - $price ',
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                        const Text(
                          'Inc. VAT',
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
