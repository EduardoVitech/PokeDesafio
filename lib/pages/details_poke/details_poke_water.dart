import 'package:flutter/material.dart';

class DetailsWaterPage extends StatefulWidget {
  @override
  State<DetailsWaterPage> createState() => _DetailsWaterPageState();
}

class _DetailsWaterPageState extends State<DetailsWaterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              //======DETALHES.TXT=====
              Container(
                height: 30,
                margin: const EdgeInsets.only(left: 20, top: 40),
                child: const Text(
                  "Detalhes",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 24,
                  ),
                ),
              ),
              Spacer(),
              Container(
                height: 30,
                margin: const EdgeInsets.only(top: 40),
                child: FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/allPage');
                  },
                  //=========ICON CLOSE=========
                  child: const Icon(
                    Icons.close,
                    color: Colors.black54,
                    size: 26,
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 6),
            width: MediaQuery.of(context).size.width / 1.1,
            height: 2,
            color: Colors.grey.shade300,
          ),
          //=======PIKACHU.TXT======
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.only(top: 20, left: 20),
            child: const Text(
              "Wartortle",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 37,
              ),
            ),
          ),
          //========IMAGENS=========
          Container(
            margin: const EdgeInsets.only(top: 20, left: 20),
            child: Row(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  height: 90,
                  width: 99,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(12),
                    ),
                  ),
                  child: Image.asset("lib/assets/imagePoke/pk3.png", scale: 16),
                ),
                Container(
                  height: 90,
                  width: 99,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(12),
                    ),
                  ),
                  child:
                      Image.asset("lib/assets/imagePoke/pk3-3.png", scale: 2),
                ),
              ],
            ),
          ),
          //======ALTURA/PESO=======
          Container(
            margin: const EdgeInsets.only(top: 20, left: 20),
            child: Row(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(right: 20),
                  child: const Text(
                    "1.0m",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  child: const Text(
                    "22.5Kg",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          //==========TIPO==========
          Container(
            margin: const EdgeInsets.only(top: 30, left: 20),
            alignment: Alignment.centerLeft,
            child: Container(
              margin: const EdgeInsets.only(left: 7),
              width: 130,
              height: 45,
              decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
              ),
              child: const Center(
                child: Text(
                  "Water",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          //====ESTATISTICA.TXT=====
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.only(left: 20, top: 20),
            child: Text(
              "Estatisticas",
              style: TextStyle(
                color: Colors.grey.shade400,
                fontSize: 21,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          //=========HP============
          Container(
            margin: const EdgeInsets.only(top: 10, left: 20),
            child: Row(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(right: 17),
                  child: Text(
                    "HP",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.grey.shade500,
                    ),
                  ),
                ),
                Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 1.4,
                      height: 11,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 3.2,
                      height: 11,
                      decoration: const BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10),
                  child: Text(
                    "35",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.grey.shade500,
                    ),
                  ),
                ),
              ],
            ),
          ),
          //=========ATK===========
          Container(
            margin: const EdgeInsets.only(top: 10, left: 20),
            child: Row(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  child: Text(
                    "ATK",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.grey.shade500,
                    ),
                  ),
                ),
                Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 1.4,
                      height: 11,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 1.8,
                      height: 11,
                      decoration: const BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10),
                  child: Text(
                    "70",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.grey.shade500,
                    ),
                  ),
                ),
              ],
            ),
          ),
          //=========DEF===========
          Container(
            margin: const EdgeInsets.only(top: 10, left: 20),
            child: Row(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  child: Text(
                    "DEF",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.grey.shade500,
                    ),
                  ),
                ),
                Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 1.4,
                      height: 11,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 2.1,
                      height: 11,
                      decoration: const BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10),
                  child: Text(
                    "62",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.grey.shade500,
                    ),
                  ),
                ),
              ],
            ),
          ),
          //=========S.ATK=========
          Container(
            margin: const EdgeInsets.only(top: 10, left: 10),
            child: Row(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(right: 7),
                  child: Text(
                    "S.ATK",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.grey.shade500,
                    ),
                  ),
                ),
                Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 1.4,
                      height: 11,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 8,
                      height: 11,
                      decoration: const BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10),
                  child: Text(
                    "12",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.grey.shade500,
                    ),
                  ),
                ),
              ],
            ),
          ),
          //=========S.DEF=========
          Container(
            margin: const EdgeInsets.only(top: 10, left: 10),
            child: Row(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(right: 7),
                  child: Text(
                    "S.DEF",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.grey.shade500,
                    ),
                  ),
                ),
                Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 1.4,
                      height: 11,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 1.5,
                      height: 11,
                      decoration: const BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10),
                  child: Text(
                    "95",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.grey.shade500,
                    ),
                  ),
                ),
              ],
            ),
          ),
          //=========SPD===========
          Container(
            margin: const EdgeInsets.only(top: 10, left: 20),
            child: Row(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  child: Text(
                    "SPD",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.grey.shade500,
                    ),
                  ),
                ),
                Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 1.4,
                      height: 11,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 9.1,
                      height: 11,
                      decoration: const BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10),
                  child: Text(
                    "10",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.grey.shade500,
                    ),
                  ),
                ),
              ],
            ),
          ),
          //====BOTÃO FAVORITAR====
          Container(
            margin: const EdgeInsets.only(top: 29),
            child: FlatButton(
              onPressed: () {
                setState(() => pressAttention = !pressAttention);
              },
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width / 1.2,
                decoration: BoxDecoration(
                  color: pressAttention ? Colors.red : Colors.amber,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Row(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width / 5,
                      alignment: Alignment.centerRight,
                      child: Icon(
                        Icons.bookmark_border_sharp,
                        color: pressAttention ? Colors.red : Colors.black,
                        size: 25,
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(left: 10),
                      child: Text(
                        pressAttention
                            ? 'Remover dos favoritos'
                            : 'Adicionar aos favoritos',
                        style: TextStyle(
                          fontSize: 18,
                          color: pressAttention ? Colors.white : Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  bool pressAttention = false;
}
