import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:firebase_core/firebase_core.dart';

class PrincipalPadel extends StatefulWidget {
  const PrincipalPadel({Key? key}) : super(key: key);

  @override
  State<PrincipalPadel> createState() => _PrincipalPadelState();
}

class _PrincipalPadelState extends State<PrincipalPadel> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("PADEL"),
          backgroundColor: Colors.black,
          bottom: TabBar(
            tabs: [
              Tab(
                  icon: Icon(Icons.sports_tennis),
                  text: "Home"
              ),
              Tab(
                icon: Icon(Icons.rule),
                text: "Regras",
              ),
              Tab(
                  icon: Icon(Icons.location_on),
                  text: "Onde Jogar"
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Home(),
            Regras(),
            Jogar(),
          ],
        ),
      ),
    );
  }

// home "
  Widget Home() {
    return Scaffold(
        body: SingleChildScrollView(
            padding: EdgeInsets.all(5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  width: 400,
                  color: Colors.black,
                  child: Text("Sobre o esporte", style: TextStyle(fontSize: 20,
                    color: Colors.white,
                    letterSpacing: 2,
                  ),
                      textAlign: TextAlign.center),
                ),
                SizedBox(
                  height: 5,
                ),
                Text("Padel é um esporte de raquete praticado em pares. Tem um sistema de jogo semelhante ao tênis, onde os jogadores têm de passar a bola por cima da rede, tendo obrigatoriamente de acertar no campo adversário.", textAlign: TextAlign.center),


                SizedBox(
                  height: 30,
                ),

                Container(
                  width: 400,
                  color: Colors.black,
                  child: Text("O que é necessário para começar jogar?", style: TextStyle(fontSize: 20,
                    color: Colors.white,
                    letterSpacing: 2,
                  ),
                      textAlign: TextAlign.center),
                ),
                SizedBox(
                  height: 5,
                ),
                Text("Para começar não é preciso ter raquete e bolas, apenas equipamento normal para esporte, um parceiro e uma dupla adversária. O campo de padel fornece raquete e bolas. Porém a um nível mais avançado é necessário comprar uma raquete e bolas para se ter maior estabilidade ao jogar sempre com a mesma raquete.", textAlign: TextAlign.center),


                SizedBox(
                  height: 30,
                ),

                Container(
                  width: 400,
                  color: Colors.black,
                  child: Text("Benefícios da Prática do Padel", style: TextStyle(fontSize: 20,
                    color: Colors.white,
                    letterSpacing: 2,
                  ),
                      textAlign: TextAlign.center),
                ),
                SizedBox(
                  height: 5,
                ),
                Text("- Tonifica os músculos.", textAlign: TextAlign.center),
                Text("- Perda de peso.", textAlign: TextAlign.center),
                Text("- Espírito competitivo e de ‘‘fair play''.", textAlign: TextAlign.center),
                Text("- Dormir melhor.", textAlign: TextAlign.center),
                Text("- Esporte para qualquer idade e nível.", textAlign: TextAlign.center),


                SizedBox(
                  height: 30,
                ),

                Container(
                  width: 400,
                  color: Colors.black,
                  child: Text("Curiosidades", style: TextStyle(fontSize: 20,
                    color: Colors.white,
                    letterSpacing: 2,
                  ),
                      textAlign: TextAlign.center),
                ),
                SizedBox(
                  height: 5,
                ),
                Text("Você sabia que existem três tipos diferentes de raquetes para se jogar padel? A raquete com cabeça em forma de diamante é ideal para competições que visam a potência. A de cabeça redonda é ideal para quem quer iniciar no esporte. A de cabeça em forma de lágrima está entre os dois modelos acima descritos: promove o equilíbrio entre controle e potência.", textAlign: TextAlign.center),


                SizedBox(
                  height: 30,
                ),

                Container(
                  width: 400,
                  color: Colors.black,
                  child: Text("Como segurar a raquete:", style: TextStyle(fontSize: 20,
                    color: Colors.white,
                    letterSpacing: 2,
                  ),
                      textAlign: TextAlign.center),
                ),
                SizedBox(
                  height: 5,
                ),
                Text("- Segure a raquete de forma continental (diagonal em relação ao braço).", textAlign: TextAlign.center),
                Text("- Coloque o dedo indicador da outra mão no espaço vazio entre a palma e os dedos.", textAlign: TextAlign.center),
                Text("- Se estiver encaixando, o tamanho está certo. Se estiver apertado precisa de um grip maior. Se estiver sobrando, precisa de um grip menor.", textAlign: TextAlign.center),


                SizedBox(
                  height: 30,
                ),

                Container(
                  width: 400,
                  color: Colors.black,
                  child: Text("Diferença entre as bolas de padel e tênis:", style: TextStyle(fontSize: 20,
                    color: Colors.white,
                    letterSpacing: 2,
                  ),
                      textAlign: TextAlign.center),
                ),
                SizedBox(
                  height: 5,
                ),
                Text("- A bola de padel é um pouco maior.", textAlign: TextAlign.center),
                Text("- A bola de padel tem menos pressão.", textAlign: TextAlign.center),
                Text("- A bola de padel é um pouco mais pesada.", textAlign: TextAlign.center),
              ],
            )
        )
    );
  }


  // regras
  Widget Regras() {
    return Scaffold(
        body: SingleChildScrollView(
            padding: EdgeInsets.all(5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children:  [
                Container(
                  width: 400,
                  color: Colors.black,
                  child: Text("Sistema de Pontuação", style: TextStyle(fontSize: 20,
                    color: Colors.white,
                    letterSpacing: 2,
                  ),
                      textAlign: TextAlign.center),
                ),
                SizedBox(
                  height: 5,
                ),
                Text("A pontuação e as regras são muito semelhantes ao tênis. Porém, no padel o golpe da bola é feito por baixo.",
                    textAlign: TextAlign.center),
                Text("As regras permitem o uso das paredes laterais e traseiras. Os pontos são ganhos mais pela estratégia do que pela força.",
                    textAlign: TextAlign.center),

                SizedBox(
                  height: 30,
                ),

                Container(
                  width: 400,
                  color: Colors.black,
                  child: Text("Partida, set e jogo", style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    letterSpacing: 2,
                  ),
                      textAlign: TextAlign.center),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                    "O primeiro a ganhar 3 sets é o vencedor. Os jogos são compostos por pontos, que são 15, 30 e 40.",
                    textAlign: TextAlign.center),
                Text(
                    "O primeiro a vencer 6 jogos com uma diferença mínima de 2 em relação ao seu adversário é o vencedor do set.",
                    textAlign: TextAlign.center),


                SizedBox(
                  height: 30,
                ),


                Container(
                  width: 400,
                  color: Colors.black,
                  child: Text("Pontuação Detalhada", style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    letterSpacing: 2,
                  ),
                      textAlign: TextAlign.center),
                ),
                SizedBox(
                  height: 5,
                ),
                Text("Quando um jogador ganha o primeiro ponto, é 15, quando tem 2 pontos, 30, e quando tem 3, 40.", textAlign: TextAlign.center),
                Text("O jogador que ganha o set é aquele que consegue fazer 6 jogos, com uma diferença de 2, ou 7.", textAlign: TextAlign.center),


                SizedBox(
                  height: 30,
                ),



                Container(
                  width: 400,
                  color: Colors.black,
                  child: Text("Tiebreak", style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    letterSpacing: 2,
                  ),
                      textAlign: TextAlign.center),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                    "Se você atingir 7 pontos sem uma diferença de 2 (por exemplo: 7-6), o jogo continuará até que um dos dois jogadores consiga essa diferença e ganhe o set. A pontuação de um set que tenha sido decidida no tiebreak será de 7-6, acompanhada pelo número de pontos obtidos pelo perdedor do mesmo entre parênteses. Exemplo: se o jogador perder o jogo decisivo por 7-3, a pontuação do set será: 7-6 (3).",
                    textAlign: TextAlign.center),
              ],
            )
        )
    );
  }


  // PARTE DANIEL PRONTA NAO MEXER DAQUI PRA BAIXO
  Widget Jogar(){
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            new ElevatedButton(
                onPressed: abrirMapa1,
                style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    fixedSize: Size.fromWidth(230)
                ),
                child: new Text("PROPADEL - Santa Rosa")
            ),
            new ElevatedButton(
                onPressed: abrirMapa2,
                style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    fixedSize: Size.fromWidth(230)
                ),
                child: new Text("PADELFIVE - Santo Ângelo")
            ),
            new ElevatedButton(
                onPressed: abrirMapa3,
                style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    fixedSize: Size.fromWidth(230)
                ),
                child: new Text("LetsPadel - São Luiz Gonzaga")
            ),
            new ElevatedButton(
                onPressed: abrirMapa4,
                style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    fixedSize: Size.fromWidth(230)
                ),
                child: new Text("Ocean Village - Três de Maio")
            ),
            new ElevatedButton(
                onPressed: abrirMapa5,
                style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    fixedSize: Size.fromWidth(230)
                ),
                child: new Text("Estação Padel & Beach - Ijuí")
            ),
            new ElevatedButton(
                onPressed: abrirMapa6,
                style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    fixedSize: Size.fromWidth(230)
                ),
                child: new Text("Golden Ball - Ijuí")
            ),
          ],
        ),
      ),
    );
  }

  abrirMapa1() async {
    const url = 'https://goo.gl/maps/41qC6whr4ZzmNteg6';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  abrirMapa2() async {
    const url = 'https://goo.gl/maps/xwAWJDQXwwum3QDN7';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  abrirMapa3() async {
    const url = 'https://goo.gl/maps/r6Q3waeqk6L3sA72A';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  abrirMapa4() async {
    const url = 'https://goo.gl/maps/42twevuCphftbTJd7';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  abrirMapa5() async {
    const url = 'https://goo.gl/maps/h4C1ppw3jYWjUQsv6';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  abrirMapa6() async {
    const url = 'https://goo.gl/maps/jR5VR8xVFPCjY63f9';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

}