import 'package:ass1/Widgets/id_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 70,
            title: const Text(
              "عاصمة فلسطين",
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            centerTitle: true,
            backgroundColor: const Color.fromARGB(255, 157, 89, 235),
            elevation: 0,
          ),
          body: Column(
            children: [
              Image.asset('assets/images/quds.jpg'),
              const Text(
                "مدينة القدس",
                style: TextStyle(
                  fontSize: 30,
                  color: Color.fromARGB(255, 129, 129, 129),
                  fontWeight: FontWeight.w600,
                ),
              ),
              IdCard(title: "الاسم", value: "القدس"),
              IdCard(title: "المساحة", value: "125 كم"),
              IdCard(title: "السكان", value: "358000 نسمة"),
              IdCard(title: "الدولة", value: "فلسطين"),
              IdCard(title: "اسم الطالب", value: "أسامة رائد جنينة"),
            ],
          ),
        ),
      ),
    );
  }
}
