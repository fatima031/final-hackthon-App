import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todayappforhackthon/utils/customColors.dart';
import 'package:todayappforhackthon/utils/customTextField.dart';
import 'package:todayappforhackthon/views/bottom_nav.dart';
import 'package:todayappforhackthon/views/home.dart';
import 'package:todayappforhackthon/views/signup.dart';

class Login_view extends StatefulWidget {
  const Login_view({super.key});

  @override
  State<Login_view> createState() => _Login_viewState();
}

class _Login_viewState extends State<Login_view> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passowrdController = TextEditingController();
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
      child: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                margin: const EdgeInsets.only(top: 50),
                child: Image.asset(
                  "assets/images/logo.png",
                  height: 100,
                  width: 100,
                ),
              ),
            ),
            Container(
              child: const Text(
                'Delievered Favourite Food',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: CustomColors.textColor),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Container(
                color: CustomColors.containerColor,
                height: 300,
                width: 270,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: const Text(
                          "Login",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: CustomColors.textColor),
                        ),
                      ),
                    ),
                    Container(
                        height: 40,
                        width: 250,
                        decoration: BoxDecoration(
                          boxShadow: [const BoxShadow(color: Colors.white)],
                          color: CustomColors.containerColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextField(
                          controller: emailController,
                          // obscureText: true,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Enter your Email',
                              // suffixIcon: Icon(Icons.remove_red_eye_outlined,
                              //     color: Colors.white),
                              prefixIcon: Icon(
                                Icons.person,
                                color: Colors.white,
                              )),
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                        height: 40,
                        width: 250,
                        decoration: BoxDecoration(
                          boxShadow: [const BoxShadow(color: Colors.white)],
                          color: CustomColors.containerColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextField(
                          controller: passowrdController,
                          obscureText: true,
                          decoration: const InputDecoration(
                              focusColor: Colors.white,
                              border: OutlineInputBorder(),
                              hintText: 'Enter yout password',
                              suffixIcon: Icon(Icons.remove_red_eye_outlined,
                                  color: Colors.white),
                              prefixIcon: Icon(
                                Icons.person,
                                color: Colors.white,
                              )),
                        )),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      alignment: Alignment.centerRight,
                      child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Forget Password?",
                            style: TextStyle(
                                color: CustomColors.textColor,
                                fontWeight: FontWeight.normal,
                                fontSize: 15),
                          )),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 30,
                      width: 170,
                      child: ElevatedButton(
                          style: const ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll(
                                  CustomColors.buttonColors)),
                          onPressed: () {
                            Get.offAll(() => Nav_tab());
                          },
                          child: const Text("LOGIN")),
                    ),
                    Container(
                      child: const Text(
                        'or',
                        style: TextStyle(
                            color: CustomColors.textColor,
                            fontWeight: FontWeight.normal,
                            fontSize: 10),
                      ),
                    ),
                    Container(
                      height: 65,
                      width: 60,
                      color: Colors.transparent,
                      child: Image.asset("assets/images/Frame 18.png"),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Dont have an account?",
                        style: TextStyle(
                            color: CustomColors.textColor,
                            fontWeight: FontWeight.normal,
                            fontSize: 15),
                      ),
                      TextButton(
                          onPressed: () {
                            Get.offAll(() => Signup_view());
                          },
                          child: const Text(
                            'REGISTER',
                            style: TextStyle(
                                color: CustomColors.textColor,
                                fontWeight: FontWeight.normal,
                                fontSize: 15),
                          ))
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
