import 'package:dota_2_hero_app/components/radio2.dart' as special_version;
import 'package:dota_2_hero_app/model/heros_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HeroListType extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                borderRadius: BorderRadius.all(Radius.circular(50.0)),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(30.0, 20.0, 20.0, 20.0),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 13.0),
                      child: Text(
                        'All Hero',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                    special_version.Radio(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      value: HerosType.All,
                      groupValue: context.watch<HerosList>().getHeroesType(),
                      onChanged: (HerosType value) {
                        context.read<HerosList>().toggleHeroesType();
                      },
                      activeColor: Colors.red[800],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                borderRadius: BorderRadius.all(Radius.circular(50.0)),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(30.0, 20.0, 20.0, 20.0),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 13.0),
                      child: Text(
                        'Popular',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                    special_version.Radio(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      value: HerosType.Popular,
                      groupValue: context.watch<HerosList>().getHeroesType(),
                      onChanged: (HerosType value) {
                        context.read<HerosList>().toggleHeroesType();
                      },
                      activeColor: Colors.red[800],
                      focusColor: Colors.yellow,
                      hoverColor: Colors.yellow,
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
}
