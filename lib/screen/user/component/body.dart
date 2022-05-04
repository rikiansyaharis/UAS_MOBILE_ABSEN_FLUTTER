import 'package:absen_flutter/screen/user/component/profil_menu.dart';
import 'package:absen_flutter/screen/user/component/profil_pic.dart';

import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfilPic(),
        SizedBox(height: 20),
        ProfileMenu(
          icon: Icons.person,
          text: "   Profile",
          press: () {},
        ),
        ProfileMenu(
          icon: Icons.qr_code_scanner_outlined,
          text: "   Pindai",
          press: () {
            Navigator.pushNamed(context, '/scanner');
          },
        ),
        ProfileMenu(
          icon: Icons.settings,
          text: "   Pengaturan",
          press: () {},
        ),
        ProfileMenu(
          icon: Icons.history,
          text: "   Riwayat",
          press: () {
            Navigator.pushNamed(context, '/riwayat');
          },
        ),
        ProfileMenu(
          icon: Icons.help_outline_outlined,
          text: "   Help",
          press: () {},
        ),
        ProfileMenu(
          icon: Icons.logout,
          text: "   Log Out",
          press: () {
            Navigator.pushNamed(context, '/');
          },
        ),
      ],
    );
  }
}
