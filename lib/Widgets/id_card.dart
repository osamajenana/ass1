import 'package:flutter/material.dart';

class IdCard extends StatelessWidget {
  final String title;
  final String value;

  IdCard({required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromARGB(255, 245, 237, 237),
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
        side: const BorderSide(
          color: Colors.black,
        ),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.center,
              height: 60,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.black),
              ),
              margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    color: Color.fromARGB(255, 129, 129, 129),
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              alignment: Alignment.center,
              height: 60,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.black),
              ),
              margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              child: Text(
                value,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Color.fromARGB(255, 129, 129, 129),
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
