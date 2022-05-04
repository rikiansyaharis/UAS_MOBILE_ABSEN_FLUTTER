import 'package:flutter/material.dart';

class ProfilPic extends StatelessWidget {
  const ProfilPic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230,
      width: 150,
      child: Stack(
        fit: StackFit.expand,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage("assets/images/profil.jpg"),
          ),
          Positioned(
            right: 0,
            bottom: 30,
            child: SizedBox(
              height: 50,
              width: 50,
              child: FlatButton(
                padding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                  side: BorderSide(color: Colors.white),
                ),
                color: Color(0xFFF5F6F9),
                onPressed: () {},
                child: Image.asset("assets/images/camera_icons.png"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
