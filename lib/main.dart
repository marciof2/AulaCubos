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
                  ContainerCores(
                    cor: Colors.white,
                    altura: 100,
                  ),
                  ContainerCores(
                    cor: Colors.white,
                    altura: 100,
                  ),
                  ContainerCores(
                    cor: Colors.white,
                    altura: 100,
                  ),
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
                Container(
                  color: Colors.yellow,
                  height: 50,
                  width: 50,
                ),
                Container(
                  color: Colors.white,
                  height: 50,
                  width: 50,
                ),
                Container(
                  color: Colors.red,
                  height: 50,
                  width: 50,
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
  final Color cor;
  double altura;
  double largura;

  ContainerCores({Key key, this.cor, this.altura, this.largura})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: altura,
      width: largura,
      color: cor,
    );
  }
}
