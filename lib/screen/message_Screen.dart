import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/material.dart';
import 'package:bubble/bubble.dart';

import '../widged/RecordBUtton.dart';
import '../widged/massege_textfild.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> with SingleTickerProviderStateMixin {
  bool emojiVisible=true;

  TextEditingController massegeControllar=TextEditingController();
  AnimationController? controller;
  String changeButton="";
  String changeemoji="";
  String changefile="";
  String admin = "";
  bool showMic = false;
  bool readOnly = false;
  @override
  void initState() {
  //  getChatandAdmin();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );
    super.initState();
  }

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
      body:

      Column(

        children: [

          Expanded(
            child: ListView.builder(
                itemCount: 5,
                primary: false,
                shrinkWrap: true,
                itemBuilder: (context, index){

              return

                Bubble(
                      margin: BubbleEdges.only(top: 15),
                      nip: BubbleNip.leftTop,
                      child: Text("Hi Developer"),
                    );

            }),
          ),
         // Expanded(
         //   child: Column(
         //
         //     children: [
         //       Bubble(
         //         margin: BubbleEdges.only(top: 15),
         //         nip: BubbleNip.leftTop,
         //         child: Text("Hi Developer"),
         //       ),
         //       Bubble(
         //         margin: BubbleEdges.only(top: 15),
         //         alignment: Alignment.bottomRight,
         //         nip: BubbleNip.rightBottom,
         //         color: Color.fromRGBO(225, 255, 199, 1.0),
         //         child: Text("Hello Developer"),
         //       ),
         //     ],
         //   ),
         // ),


          Row(
            children: [
              Expanded(
                child: MassageTextFildWidget(
                  onTab: (){
                   setState(() {
                     emojiVisible=true;
                   });
                  },
                  icon: GestureDetector(
                    onTap: (){

                    },
                      child: Icon(Icons.file_copy)),
                  icon2:GestureDetector(
                    onTap: (){
                      setState(() {
                        emojiVisible=!emojiVisible;
                        FocusScope.of(context).unfocus();

                      });

                    },

                      child: Icon(Icons.emoji_emotions,))
                  ,controller: massegeControllar,
                readOnly:readOnly ,
                 onChanged: (value){
                    setState(() {
                      changeButton=value;
                      print("Data....${changeButton}");
                    });
                 },
                name: "Type Messages....",),
              ),

              changeButton !=""|| changeemoji!="" || changefile!="" ?  GestureDetector(
                    onTap: () {
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Center(
                          child: Icon(
                            Icons.send,
                            color: Colors.white,
                          )),
                    ),
                  )

              : RecordButton(controller: controller!)

            ],
          ),
           
           emojiPicker()
          

    ],

      ),

    );
  }

    emojiPicker(){

    return Offstage(
      offstage: emojiVisible,
      child: SizedBox(
        height: 250,
        child: EmojiPicker(
          onEmojiSelected: (Category,Emoji emoji){
            setState(() {
              changeButton =emoji.emoji.toString();
            });
            print(emoji.name);
            print(emoji.emoji);
          },
          onBackspacePressed: (){
          },
          textEditingController: massegeControllar,
          config:Config(
            columns: 7,
            emojiSizeMax: 32,// Issue: https://github.com/flutter/flutter/issues/28894
            verticalSpacing: 0,
            horizontalSpacing: 0,
            gridPadding: EdgeInsets.zero,
            initCategory: Category.RECENT,
            bgColor: Color(0xFFF2F2F2),
            indicatorColor: Colors.blue,
            iconColor: Colors.grey,
            iconColorSelected: Colors.blue,
            backspaceColor: Colors.blue,
            skinToneDialogBgColor: Colors.white,
            skinToneIndicatorColor: Colors.grey,
            enableSkinTones: true,
            showRecentsTab: true,
            recentsLimit: 28,
            noRecents: const Text(
              'No Recents',
              style: TextStyle(fontSize: 20, color: Colors.black26),
              textAlign: TextAlign.center,
            ), // Needs to be const Widget
            loadingIndicator: const SizedBox.shrink(), // Needs to be const Widget
            tabIndicatorAnimDuration: kTabScrollDuration,
            categoryIcons: const CategoryIcons(),
            buttonMode: ButtonMode.MATERIAL,
          ),
        ),
      ),
    );
   }
}
