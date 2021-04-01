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
  Color cor;
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
