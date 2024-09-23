import "dart:math";
import "package:flutter/material.dart";

void main(){
  runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var _frases = [
    "Aprender nunca é tarde demais",
    "A persistência é o caminho para o sucesso",
    "Cada desafio é uma nova oportunidade",
    "A vida é curta demais para não arriscar",
    "Conquistas são feitas de pequenos passos",
    "Seu futuro começa com suas ações de hoje",
  ];

  var _fraseGerada = "Clique abaixo para gerar uma nova frase!";

  void _gerarFrase(){
    var sorteado = Random().nextInt(_frases.length);
    _fraseGerada = _fraseGerada[sorteado];
    setState(() {
      _fraseGerada = _frases[ sorteado ];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          "Frases do dia",
          style: TextStyle(color: Colors.white,),
        ),
      ),
      body: Center(
        child: Container(
          // width: double.infinity,
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("images/logo.png"),
              Text(
                _fraseGerada,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 17,
                  fontStyle: FontStyle.italic,
                  color: Colors.black,
                ),
              ),
              ElevatedButton(
                onPressed: _gerarFrase,
                child: Text(
                  "Gerar nova frase",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightGreen,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
