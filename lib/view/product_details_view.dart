import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  var _showQuantity = false;
  var quantity=0;
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
              padding:
                  const EdgeInsets.only(top: 8, bottom: 0, left: 8, right: 8),
              child: Container(
                width: double.infinity,
                height: 130,
                child: Column(
                  children: [
                    Container(
                      height: 25,
                      width: double.infinity,
                      color: Colors.grey[400],
                      child: const Text(
                        "  Product Details",
                        style:
                            TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: Text(
                            "  Finishing",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                        Text(
                          "-Flat",
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: 1,
                      color: Colors.grey[400],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: Text(
                            "  Color",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                        Text(
                          "-Smooth sea",
                          style: TextStyle(fontSize: 14),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: 1,
                      color: Colors.grey[400],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(
                          width: 250,
                          child: Text(
                            "  Size & Quantity",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              _showQuantity = !_showQuantity;
                            });
                          },
                          child: const Icon(
                            Icons.arrow_drop_down_outlined,
                            size: 24,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            _showQuantity
                ? Container(
                    // color: Colors.redAccent,
                    height: 180,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.49,
                          child: Image.asset(
                            "images/bucket.png",
                            width: 120,
                            height: 120,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Row(
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
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 25,
                              width: 200,
                              color: Colors.grey[400],
                              alignment: Alignment.center,
                              child: Text(
                                "Add to Cart",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                InkWell(
                                  onTap: (){
                                    setState(() {
                                      quantity++;
                                    });
                                  },
                                  child: Container(
                                    height: 25,
                                    width: 48,
                                    color: Colors.grey[400],
                                    alignment: Alignment.center,
                                    child: const Text(
                                      "+",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 2,
                                ),
                                Container(
                                  height: 25,
                                  width: 100,
                                  color: Colors.grey[400],
                                  alignment: Alignment.center,
                                  child:  Text(
                                    "${quantity}",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                const SizedBox(
                                  width: 2,
                                ),
                                InkWell(
                                  onTap: (){
                                    setState(() {
                                      if(quantity>0){
                                        quantity--;
                                      }
                                    });
        
        
                                  },
                                  child: Container(
                                    height: 25,
                                    width: 48,
                                    color: Colors.grey[400],
                                    alignment: Alignment.center,
                                    child: const Text(
                                      "-",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                const Text(
                                  "Base Price",
                                  style: TextStyle(fontSize: 16),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                const Text(
                                  "1,200 Sr",
                                  style: TextStyle(fontSize: 16),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                const Text(
                                  "Total Price",
                                  style: TextStyle(fontSize: 16),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                const Text(
                                  "4,800 Sr",
                                  style: TextStyle(fontSize: 16),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  )
                : const SizedBox(
                    height: 5,
                  ),
            Container(
              height: 1,
              color: Colors.grey[400],
            ),
            SizedBox(
              height: 60,
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
            Container(
              height: 1,
              color: Colors.grey[400],
            ),
          ],
        ),


      ),
    );
  }
}
