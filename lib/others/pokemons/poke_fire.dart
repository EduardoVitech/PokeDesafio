import 'package:flutter/material.dart';

class PokemonsFire extends StatefulWidget {
  @override
  State<PokemonsFire> createState() => _PokemonsFireState();
}

class _PokemonsFireState extends State<PokemonsFire> {
  @override
  Widget build(BuildContext context) {
    //===DECORAÇÃO DO CONTAINER===
    return Container(
      alignment: Alignment.topLeft,
      margin: const EdgeInsets.only(left: 10, bottom: 20),
      width: 170,
      height: 260,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 2,
            offset: const Offset(0, 3),
          ),
        ],
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Column(
        children: <Widget>[
          //=======IMAGEM/BOTÃO FAVORIOTOS======
          Row(
            children: [
              //=======IMAGEM=======
              Container(
                height: 90,
                width: 120,
                alignment: Alignment.bottomRight,
                child: Image.asset("lib/assets/imagePoke/pk2.png", scale: 10),
              ),
              //=====BOTÃO FAVORITOS=====
              Container(
                height: 90,
                width: 42,
                alignment: Alignment.topCenter,
                child: FlatButton(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(40),
                    ),
                  ),
                  child: Icon(
                    pressAttention ? Icons.favorite : Icons.favorite_border,
                    size: 35,
                    color: pressAttention ? Colors.red : Colors.black54,
                  ),
                  onPressed: () =>
                      setState(() => pressAttention = !pressAttention),
                ),
              ),
            ],
          ),
          //======PIKACHU.TEXT====
          Container(
            margin: const EdgeInsets.only(top: 10, left: 7),
            alignment: Alignment.centerLeft,
            child: const Text(
              "Charmander",
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          //======ID.TEXT=========
          Container(
            margin: const EdgeInsets.only(top: 5, left: 7),
            alignment: Alignment.centerLeft,
            child: Text(
              "ID: 102",
              style: TextStyle(
                color: Colors.grey.shade600,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          //=========TIPO FOGO========
          Container(
            alignment: Alignment.bottomLeft,
            margin: const EdgeInsets.only(top: 7, left: 7),
            child: Container(
              margin: const EdgeInsets.only(left: 7),
              width: 66,
              height: 27,
              decoration: const BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
              ),
              child: const Center(
                child: Text(
                  "Fire",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          //===BOTÃO VER DETALHES===
          Container(
            margin: const EdgeInsets.only(top: 8),
            width: MediaQuery.of(context).size.width,
            child: FlatButton(
              onPressed: () {
                Navigator.pushNamed(context, '/detailsFirePage');
              },
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Container(
                height: 35,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: const Center(
                  child: Text(
                    'Ver detalhes',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
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
