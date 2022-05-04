import 'package:flutter/material.dart';

class ProfileMenu extends StatelessWidget {
  String text;
  IconData icon;
  VoidCallback press;
  
  ProfileMenu({
    Key? key,
    required this.text,
    required this.icon,
    required this.press, 
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: FlatButton(
        padding: EdgeInsets.all(20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        color: Color(0xfff5f6f9),
        onPressed: press,
        child: Row(
          children: [
            Icon(icon),
            Text(text, style: TextStyle(fontSize: 15,),),
            SizedBox(width: 30),
          ],
        ),
      ),
    );
  }
}