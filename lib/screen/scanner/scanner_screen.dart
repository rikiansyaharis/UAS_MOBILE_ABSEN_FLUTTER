// import 'package:absen_flutter/screen/scanner/components/Scanner.dart';
import 'package:flutter/material.dart';
import 'package:flutter_qr_bar_scanner/qr_bar_scanner_camera.dart';

class ScannerScreen extends StatefulWidget {
  @override
  _ScannerScreenState createState() => _ScannerScreenState();
}

class _ScannerScreenState extends State<ScannerScreen> {
  String? _qrInfo = 'Scan a QR/Bar code';
  bool camState = false;

  qrCallback(String? code) {
    setState(() {
      camState = false;
      _qrInfo = code;
    });
  }

  @override
  void initState() {
    super.initState();
    setState(() {
      camState = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('Scanner'),
        backgroundColor: Colors.blue,
      ),
      body: camState ? Center(
        child: SizedBox(
          height: 1000,
          width: 500,
          child: QRBarScannerCamera(
            onError: (context, error) => Text(
              error.toString(),
              textAlign: TextAlign.center,
            ),
            qrCodeCallback: (code) {
              qrCallback(code);
            },
          ),
        ),
      ) : Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            SizedBox(
              height: 20,
            ),
            Image.asset("assets/images/checklist.png", height: 100),
            Padding(padding: EdgeInsets.only(top: 50)),
            Text(
              "Berhasil",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 30)),
            Text(
              "Output :" + _qrInfo!,
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 40)),
            RaisedButton(
              child: Container(
                width: 250,
                alignment: Alignment.center,
                child: const Text('Kembali ke menu awal',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white)),
              ),
              color: Colors.blue,
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
            ),
          ],
        ),
      ),
    );
  }
}