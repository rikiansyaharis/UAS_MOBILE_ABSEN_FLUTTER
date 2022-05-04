import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({ Key? key }) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Info Detail"
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(),
      ),
    );
  }
}