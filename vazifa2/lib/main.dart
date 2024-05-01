import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  List humans = [
    {
      "image": Image.asset("assets/h1.png"),
      "text1": "Your Order",
      "text2": "Your Order",
      "time": "20:00",
    },
    {
      "image": Image.asset("assets/h2.png"),
      "text1": "Fruit Salad",
      "text2": "Wijio Resto",
      "time": "20:00",
    },
    {
      "image": Image.asset("assets/h3.png"),
      "text1": "Green Noodle",
      "text2": "Noodle Home",
      "time": "20:00",
    },
  ];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: SizedBox(
              height: 60,
              width: 60,
              child: Image.asset("assets/back.png"),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.only(left: 30, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Chat",
                  style: TextStyle(fontSize: 42, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(height: 20),
                for (var i = 0; i < 3; i++) menu(humans, i)
              ],
            ),
          ),
          bottomNavigationBar: BottomAppBar(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Icon(
                  Icons.home_filled,
                  size: 35,
                  color: Color(0xff22C77B),
                ),
                const Icon(
                  Icons.person_rounded,
                  size: 35,
                  color: Color(0xff22C77B),
                ),
                const Icon(
                  Icons.shopping_cart,
                  size: 35,
                  color: Color(0xff22C77B),
                ),
                SizedBox(
                  height: 50,
                  width: 130,
                  child: Image.asset('assets/chat.png'),
                ),
              ],
            ),
          )),
    );
  }
}

Widget menu(List box, int i) {
  return Column(
    children: [
      Container(
        height: 110,
        width: 390,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow:const [
                BoxShadow(
                  color: Color.fromARGB(255, 228, 222, 222), blurRadius: 1)
            ],
            color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(
                    height: 90,
                    width: 90,
                    child: box[i]["image"],
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        box[i]["text1"],
                        style: const TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        box[i]["text2"],
                        style: const TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey),
                      )
                    ],
                  ),
                ],
              ),
              const SizedBox(width: 50),
              box[i]["space"],
              Text(
                box[i]["time"],
                style: const TextStyle(fontSize: 18, color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
      const SizedBox(
        height: 20,
      ),
    ],
  );
}
