import 'package:flutter/material.dart';
class MassageTextFildWidget extends StatelessWidget {
  TextEditingController controller;
  String name;
  Icon icon;
  Icon icon2;
  bool readOnly;

  MassageTextFildWidget({Key? key, this.readOnly = false,required this.name,required this.icon,required this.controller,required this.icon2, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      // padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5,),
      // width: size.width*8.8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Color(0XFF6A62B7).withAlpha(50),
      ),
      child: TextField(
        maxLines: 8,
        minLines: 1,
        controller: controller,
        readOnly: readOnly,
        //10
        decoration: InputDecoration(
            hintText: name,
            suffixIcon: icon,
            border: InputBorder.none,
            prefixIcon: icon2,
        ),
      ),
    );
  }
}
