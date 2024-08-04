import 'package:flutter/material.dart';

import 'package:get/get.dart';
// import 'package:todayappforhackthon/location.dart';

class OrderDetail extends StatefulWidget {
  const OrderDetail({super.key});

  @override
  State<OrderDetail> createState() => _OrderDetailState();
}

class _OrderDetailState extends State<OrderDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF180649),
              Color(0xFF3910AA),
              Color(0xFF240970),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Row(children: [
              Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
              SizedBox(width: 20),
              Text(
                'Order Detail',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ]),
            Container(
              child: Column(
                children: [
                  Container(child: Image.asset("assets/images/product 1.png")),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(child: Image.asset("assets/images/product 2.png")),
                  const SizedBox(
                    height: 10,
                  ),
                 Container(child: Image.asset("assets/images/product 3.png")),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

// ElevatedButton(
//                   onPressed: () {
//                     Get.to(const Location_Page());
//                   },
//                   child: const Text(
//                     'Checkout',
//                     style: TextStyle(
//                         fontSize: 25,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white),
//                   ),
//                 )
//               ],