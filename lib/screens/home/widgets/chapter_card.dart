import 'package:atmega/model/chapter.dart';
import 'package:atmega/screens/chapter/chapter.dart';
import 'package:flutter/material.dart';

class ChapterCard extends StatelessWidget {
  const ChapterCard({
    super.key,
    required this.data,
  });

  final Chapter data;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) => ChapterPage(chapter: data)));
        },
        child: Material(
          
          elevation: 20,
          borderRadius: BorderRadius.circular(10),
          child: Container(
            padding: const EdgeInsets.all(5),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10)
            ),
            child: Text(
              data.title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                letterSpacing: 2,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
