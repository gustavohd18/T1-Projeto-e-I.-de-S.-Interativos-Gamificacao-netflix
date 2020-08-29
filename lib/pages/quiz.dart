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
  SingingCharacter _character = SingingCharacter.waffles;

  @override
  Widget build(BuildContext context) {
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
            ),
          ),
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
                  showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (context) {
                        Future.delayed(Duration(milliseconds: 500), () {
                          Navigator.of(context).pop(true);
                        });
                        return AlertDialog(
                          title: Icon(Icons.check),
                          content: Text(
                            "Resposta correta",
                            textAlign: TextAlign.center,
                          ),
                        );
                      }),
                  print("waffle"),
                  this.controller.incrementPercent(),
                  this.controller.incrementPoints(),
                  this.controller.incrementpercentText(),
                },
              if (_character.index != 0)
                {
                  showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (context) {
                        Future.delayed(Duration(milliseconds: 500), () {
                          Navigator.of(context).pop(true);
                        });
                        return AlertDialog(
                          title: Icon(Icons.error),
                          content: Text(
                            "Resposta Errada",
                            textAlign: TextAlign.center,
                          ),
                        );
                      })
                },
            },
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
