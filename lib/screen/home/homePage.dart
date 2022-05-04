import 'package:absen_flutter/enums.dart';
import 'package:absen_flutter/screen/button/button.dart';
import 'package:absen_flutter/screen/riwayat/riwayat.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static String routeName = '/home';
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context)
        .size; //this gonna give us total height and with of our device
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            // Here the height of the container is 45% of our total height
            height: size.height * .35,
            decoration: BoxDecoration(
              color: Colors.blue,
              // image: DecorationImage(
              //   alignment: Alignment.centerLeft,
              //   // image: AssetImage("assets/images/undraw_pilates_gpdb.png"),
              // ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Selamat Datang',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: GridView.count(
                      padding: EdgeInsets.only(top: 20),
                      crossAxisCount: 2,
                      childAspectRatio: .85,
                      crossAxisSpacing: 40,
                      mainAxisSpacing: 40,
                      children: <Widget>[
                        Card(
                          margin: const EdgeInsets.only(
                              top: 40, bottom: 40, left: 40),
                          child: InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, '/scanner');
                            },
                            splashColor: Colors.blue,
                            child: Center(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: const <Widget>[
                                  Icon(
                                    Icons.qr_code_scanner,
                                    size: 30,
                                    color: Colors.blueAccent,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Card(
                          margin: const EdgeInsets.only(
                              top: 40, bottom: 40, right: 40),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => Riwayat()));
                            },
                            splashColor: Colors.blue,
                            child: Center(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Icon(
                                    Icons.history,
                                    size: 30,
                                    color: Colors.blueAccent,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: CustomBottomNavBar(
        selectedMenu: MenuState.home,
      ),
    );
  }
}
