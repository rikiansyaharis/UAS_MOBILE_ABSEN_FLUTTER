
import 'package:absen_flutter/screen/button/button.dart';
import 'package:absen_flutter/screen/user/component/body.dart';
import 'package:absen_flutter/enums.dart';
import 'package:flutter/material.dart';

class ProfilScreen extends StatelessWidget {
  static String routeName = '/Profil';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(
        selectedMenu: MenuState.profile,
      ),
    );
  }
}
