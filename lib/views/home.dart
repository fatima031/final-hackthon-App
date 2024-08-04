import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todayappforhackthon/utils/customColors.dart';
import 'package:todayappforhackthon/views/orders.dart';

class Home_view extends StatefulWidget {
  const Home_view({super.key});

  @override
  State<Home_view> createState() => _Home_viewState();
}

class _Home_viewState extends State<Home_view> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/Frame18.png"),
                fit: BoxFit.cover)),
        child: SingleChildScrollView(
          child: Column(children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.menu,
                    color: CustomColors.textColor,
                  ),
                ),
                const SizedBox(
                  width: 7,
                ),
                const Column(
                  children: [
                    Text(
                      "Delivery",
                      style: TextStyle(
                          color: CustomColors.textColor,
                          fontSize: 10,
                          fontWeight: FontWeight.normal),
                    ),
                    // SizedBox(
                    //   height: 5,
                    // ),
                    Text(
                      "Maplewood suits",
                      style: TextStyle(
                          color: CustomColors.textColor,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 140,
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.manage_history_rounded,
                      color: CustomColors.textColor,
                    )),
                // const SizedBox(
                //   width: 10,
                // ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.delivery_dining,
                      color: CustomColors.textColor,
                    )),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              // ignore: prefer_const_constructors
              child: Padding(
                  padding: const EdgeInsets.all(10),
                  // ignore: prefer_const_constructors
                  child: TextField(
                    decoration: const InputDecoration(
                        focusColor: Colors.white,
                        border: OutlineInputBorder(),
                        hintText: 'Search here...',
                        suffixIcon: Icon(Icons.scanner, color: Colors.white),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.white,
                        )),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                alignment: Alignment.topLeft,
                child: const Text(
                  "Category",
                  style: TextStyle(color: CustomColors.textColor, fontSize: 20),
                ),
              ),
            ),
            Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      child: Image.asset(
                        "assets/images/Frame 1.png",
                        height: 100,
                        width: 100,
                      ),
                    ),
                    Container(
                      child: Image.asset(
                        "assets/images/Frame 2.png",
                        height: 100,
                        width: 100,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      child: Image.asset(
                        "assets/images/Frame 3.png",
                        height: 100,
                        width: 100,
                      ),
                    ),
                    Container(
                      child: Image.asset(
                        "assets/images/Frame 4.png",
                        height: 100,
                        width: 100,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  InkWell(
                      onTap: () {
                        Get.offAll(() => Orders());
                      },
                      child: Container(
                          child: Image.asset("assets/images/Card.png"))),
                  const SizedBox(
                    width: 20,
                  ),
                  InkWell(
                      onTap: () {
                        Get.offAll(() => Orders());
                      },
                      child: Container(
                          child: Image.asset("assets/images/Card.png"))),
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: const Text(
                      "Fastest Near You",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: CustomColors.textColor,
                          fontSize: 20),
                    ),
                  ),
                  InkWell(
                      onTap: () {
                        Get.offAll(() => const Orders());
                      },
                      // ignore: avoid_unnecessary_containers
                      child: Container(
                          child: Image.asset("assets/images/Card 2.png"))),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
