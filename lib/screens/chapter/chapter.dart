import 'package:atmega/model/chapter.dart';
import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

class ChapterPage extends StatefulWidget {
  final Chapter chapter;
  const ChapterPage({super.key, required this.chapter});

  @override
  State<ChapterPage> createState() => _ChapterPageState();
}

class _ChapterPageState extends State<ChapterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(widget.chapter.title),
        centerTitle: true,
      ),
      backgroundColor: Colors.blue,
      body: SingleChildScrollView(
        child: Column(
          children: [
             SizedBox(
              height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
               child: Timeline.tileBuilder(
                theme: TimelineThemeData(
                  color: Colors.white
                ),
                     builder: TimelineTileBuilder.fromStyle(
                   contentsAlign: ContentsAlign.alternating,
                  connectorStyle: ConnectorStyle.solidLine,
                  
                   contentsBuilder: (context, index) => Padding(
                     padding: const EdgeInsets.all(20.0),
                     child: Text(widget.chapter.topics[index], style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1,
                      fontSize: 16,
                     ),),
                   ),
                   itemCount: widget.chapter.topics.length,
                     ),
                   ),
             ),
          ],
        ),
      ),
    );
  }
}