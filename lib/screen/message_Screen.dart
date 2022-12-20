import 'package:flutter/material.dart';
import 'package:bubble/bubble.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:Padding(
          padding: const EdgeInsets.only(left: 15,right:3),
          child: CircleAvatar(
            backgroundImage: AssetImage("asset/humaun.jpg"),
            maxRadius: 25,
            minRadius: 12,
          ),
        ),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Mostafij Vai",style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,color: Colors.white),),
            Text("Online",style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 10,color: Colors.white),),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 12,right: 12),
            child: Icon(Icons.video_call,size: 30,),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12,right: 12),
            child: Icon(Icons.call,size: 25,),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12,right: 12),
            child: Icon(Icons.more_vert,size: 25,),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10,right: 10,top: 12,bottom: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Bubble(
              margin: BubbleEdges.only(top: 15),
              nip: BubbleNip.leftTop,
              child: Text("Hi Developer"),
            ),
            Bubble(
              margin: BubbleEdges.only(top: 15),
              alignment: Alignment.bottomRight,
              nip: BubbleNip.rightBottom,
              color: Color.fromRGBO(225, 255, 199, 1.0),
              child: Text("Hello Developer"),
            ),
          ],

        ),
      ),

    );
  }
}
