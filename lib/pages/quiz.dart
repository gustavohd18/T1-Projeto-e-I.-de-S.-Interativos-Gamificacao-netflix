import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:IHC_netflix/store/counter.dart';

enum SingingCharacter { waffles, hamburguer, pizza, sorvete }

class Quiz extends StatefulWidget {
  @override
  QuizState createState() => QuizState();
}

class QuizState extends ModularState<Quiz, Counter> {
  var currentSeason = 1;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var items = ["waffles", "hamburguer", "pizza", "sorvete"];
    SingingCharacter _character = SingingCharacter.waffles;
    return Scaffold(
      appBar: AppBar(
        title: Text('Episodios'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Qual é a comida favorita da Onze?",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18),
              )),
          ListTile(
            title: const Text('Hamburguer'),
            leading: Radio(
              value: SingingCharacter.hamburguer,
              groupValue: _character,
              onChanged: (SingingCharacter value) {
                setState(() {
                  _character = value;
                });
              },
            ),
          ),
          ListTile(
            title: const Text('Waffles'),
            leading: Radio(
              value: SingingCharacter.waffles,
              groupValue: _character,
              onChanged: (SingingCharacter value) {
                setState(() {
                  _character = value;
                });
              },
            ),
          ),
          ListTile(
            title: const Text('Pizza'),
            leading: Radio(
              value: SingingCharacter.pizza,
              groupValue: _character,
              onChanged: (SingingCharacter value) {
                setState(() {
                  _character = value;
                });
              },
            ),
          ),
          ListTile(
            title: const Text('Sorvete'),
            leading: Radio(
              value: SingingCharacter.sorvete,
              groupValue: _character,
              onChanged: (SingingCharacter value) {
                setState(() {
                  _character = value;
                });
              },
            ),
          ),
          FlatButton(
            textColor: Colors.white70,
            onPressed: () => {
              if (_character.index == 0)
                {
                  print("waffle"),
                  this.controller.incrementPercent(),
                  this.controller.incrementPoints(),
                  this.controller.incrementpercentText()
                }
              else
                {print("Erro")}
            },
            // Navigator.push(
            //context,
            //MaterialPageRoute(
            //     builder: (context) => ListEpisodio(
            //           item: widget.item,
            //         )),
            //),
            child: Container(
              height: 50.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Icon(
                    Icons.question_answer,
                    size: 36.0,
                  ),
                  Text(
                    'Responder',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 10.0),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
