import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ContainerCores(),
                  ContainerCores(),
                  ContainerCores(),
                ],
              ),
            ),
          ),
          Container(
            color: Colors.blue,
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ContainerBottom(
                  cor: Colors.green,
                ),
                ContainerBottom(
                  cor: Colors.yellow,
                ),
                ContainerBottom(
                  cor: Colors.white,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ContainerCores extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.white,
    );
  }
}

class ContainerBottom extends StatelessWidget {
  Color cor;

  ContainerBottom({Key key, this.cor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      color: cor,
    );
  }
}
