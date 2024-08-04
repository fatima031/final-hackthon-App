import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todayappforhackthon/utils/customColors.dart';
import 'package:todayappforhackthon/views/home.dart';

class Orders extends StatefulWidget {
  const Orders({super.key});

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
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
      child: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            child: IconButton(
                onPressed: () {
                  Get.offAll(() => const Home_view());
                },
                icon: const Icon(Icons.arrow_back_ios_new_outlined)),
          ),
          Container(
            child: Image.asset("assets/images/card3.png"),
          ),
          Container(
            // ignore: prefer_const_constructors
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: const Row(
                children: [
                  Column(
                    children: [
                      Text(
                        "Delievery",
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: CustomColors.textColor),
                      ),
                      Text(
                        "3.90",
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: CustomColors.textColor),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Column(
                    children: [
                      Text(
                        "Delievery",
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: CustomColors.textColor),
                      ),
                      Text(
                        "3.90",
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: CustomColors.textColor),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Column(
                    children: [
                      Text(
                        "Delievery",
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: CustomColors.textColor),
                      ),
                      Text(
                        "3.90",
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: CustomColors.textColor),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: [
              Container(
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.blue.shade900)),
                    onPressed: () {},
                    child: const Text("Delievery")),
              ),
              Container(
                child: ElevatedButton(
                    style: const ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.black)),
                    onPressed: () {},
                    child: const Text("Take Out")),
              ),
              const SizedBox(
                width: 40,
              ),
              Container(
                child: ElevatedButton(
                    style: const ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.black)),
                    onPressed: () {},
                    child: const Text("group Order")),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                        child: const Text(
                      "Featured",
                      style: TextStyle(color: CustomColors.textColor),
                    )),
                  const SizedBox(width: 10,),
                    Container(
                        child: const Text(
                      "Appetizes",
                      style: TextStyle(color: CustomColors.textColor),
                    )),
                    const SizedBox(width: 15,),
                    Container(
                        child: const Text(
                      "Sushi",
                      style: TextStyle(color: CustomColors.textColor),
                    )),
                    const SizedBox(width: 15,),
                    Container(
                        child: const Text(
                      "Featured",
                      style: TextStyle(color: CustomColors.textColor),
                    )),
                    const SizedBox(width: 15,),
                    Container(
                        child: const Text(
                      "Appetizes",
                      style: TextStyle(color: CustomColors.textColor),
                    )),
                    const SizedBox(width: 15,),
                    Container(
                        child: const Text(
                      "Sushi",
                      style: TextStyle(color: CustomColors.textColor),
                    )),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
