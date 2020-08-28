import 'package:IHC_netflix/models/series.dart';
import 'package:IHC_netflix/widgets/content_list.dart';
import 'package:flutter/material.dart';

class ListEpisodio extends StatelessWidget {
  final Serie item;

  ListEpisodio({
    Key key,
    this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Episodios'),
        ),
        body: _buildCountries());
  }

  Widget _buildCountries() {
    return SafeArea(
        child: Column(
      children: <Widget>[
        Expanded(
          child: ContentList(item.episodes),
        )
      ],
    ));
  }
}
