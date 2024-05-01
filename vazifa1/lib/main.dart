import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  List menus = [
    {
      "image": Image.asset("assets/cake.png"),
      "text1": "Herbal Pancake",
      "text2": "Warung Herbal",
      "price": "\$7",
      "space": const SizedBox(width: 0)
    },
    {
      "image": Image.asset("assets/cofe.png"),
      "text1": "Fruit Salad",
      "text2": "Wijio Resto",
      "price": "\$5",
      "space": const SizedBox(width: 40)
    },
    {
      "image": Image.asset("assets/salat.png"),
      "text1": "Green Noodle",
      "text2": "Noodle Home",
      "price": "\$15",
      "space": const SizedBox(width: 0)
    },
  ];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Padding(
            padding: const EdgeInsets.only(left: 30, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Find Your\nFavorite Food",
                      style:
                          TextStyle(fontSize: 42, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 100,
                      width: 100,
                      child: Image.asset("assets/noti.png"),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      height: 75,
                      width: 320,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: const Color(0xffFFF7EE)),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.search,
                            color: Color(0xffDA6317),
                            size: 40,
                          ),
                          Text(
                            "What do you want to order?",
                            style: TextStyle(
                                color: Color(0xffDA6317), fontSize: 20),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      height: 75,
                      width: 75,
                      child: Image.asset("assets/set.png"),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 70,
                  width: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: const Color(0xffFFF7EE)),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Soup",
                        style:
                            TextStyle(color: Color(0xffDA6317), fontSize: 20),
                      ),
                      Icon(
                        Icons.close,
                        color: Color(0xffDA6317),
                        size: 30,
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Popular Menu",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                for (var i = 0; i < 3; i++) menu(menus, i)
              ],
            ),
          ),
          bottomNavigationBar: BottomAppBar(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: 50,
                  width: 130,
                  child: Image.asset('assets/home.png'),
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
                const Icon(
                  CupertinoIcons.chat_bubble_text_fill,
                  size: 35,
                  color: Color(0xff22C77B),
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
            boxShadow: [const BoxShadow(color: Colors.grey, blurRadius: 3)],
            color: Colors.white),
        child: Row(
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
                  style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
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
            const SizedBox(width: 50),
            box[i]["space"],
            Text(
              box[i]["price"],
              style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange),
            ),
          ],
        ),
      ),
      const SizedBox(
        height: 20,
      ),
    ],
  );
}
