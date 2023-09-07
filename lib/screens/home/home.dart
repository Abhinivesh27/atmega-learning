import 'package:atmega/model/consts.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'widgets/chapter_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        centerTitle: true,
        title: Text("ATmega Erode"),
        elevation: 0,
      ),
      backgroundColor: Colors.blue,
      body: Container(
         height: MediaQuery.of(context).size.height,
         width: MediaQuery.of(context).size.width,
        child: GridView.builder(
          itemCount: Consts.chapters.length,
          itemBuilder: (context, index) => ChapterCard(data: Consts.chapters[index]),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        launchUrl(Uri.parse("https://in.linkedin.com/company/atmega-erode"));
      },
      child: Icon(Icons.contact_page),
      ),
    );
  }
}

