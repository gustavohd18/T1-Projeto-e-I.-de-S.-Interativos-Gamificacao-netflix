import 'package:IHC_netflix/models/episode.dart';
import 'package:IHC_netflix/pages/quiz.dart';
import 'package:flutter/material.dart';

class ContentTile extends StatelessWidget {
  const ContentTile({
    Key key,
    @required this.episodio,
  }) : super(key: key);

  final Episode episodio;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(
        episodio.image,
        width: 50,
        height: 50,
      ),
      title: Text(episodio.name),
      trailing: Icon(Icons.keyboard_arrow_right),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Quiz()),
        );
        // Modular.to.pushNamed('/countries', arguments: country);
      },
    );
  }
}
