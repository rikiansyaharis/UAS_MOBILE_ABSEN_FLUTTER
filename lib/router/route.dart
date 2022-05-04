import 'package:absen_flutter/screen/home/homePage.dart';
import 'package:absen_flutter/screen/login/login.dart';
import 'package:absen_flutter/screen/riwayat/component/detailPage.dart';
import 'package:absen_flutter/screen/riwayat/riwayat.dart';
import 'package:absen_flutter/screen/scanner/scanner_screen.dart';
import 'package:absen_flutter/screen/user/profil_screen.dart';


import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
      return MaterialPageRoute(builder: (_) => LoginPage());
      case '/home':
      return MaterialPageRoute(builder: (_) => HomePage());
      case '/riwayat':
      return MaterialPageRoute(builder: (_) => Riwayat());
      case '/scanner':
      return MaterialPageRoute(builder: (_) => ScannerScreen());
      case '/profile':
      return MaterialPageRoute(builder: (_) => ProfilScreen());
      case '/detail':
      return MaterialPageRoute(builder: (_) => DetailPage());

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(title: Text("Error")),
        body: Center(child: Text("Error Page")),
      );
    });
  }
}
