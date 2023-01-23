import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:soccer_app/core/entities/tournament.dart';
import 'package:soccer_app/data/repositories/TournamentRepository.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    var tournaments = TournamentRepository.getTournaments();
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          //separatorBuilder: (_, __) => const Divider(),
          itemCount: tournaments.length,
          itemBuilder: (BuildContext context, int index) =>
              createListTileItem(context, tournaments[index]),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          physics: const BouncingScrollPhysics(),
        ),
      ),
    );
  }
}

createListTileItem(BuildContext context, Tournament tournament) => ListTile(
    leading: Icon(Icons.catching_pokemon),
    title: Text(tournament.name),
    subtitle: Text('Match day: ${tournament.matchDay}'),
    trailing: CreateTrailingImage(tournament),

    //onTap: () => ,
    onTap: () => Platform.isAndroid
        ? displayDialogAndroid(context, tournament)
        : displayDialogIOS(context, tournament));

displayDialogIOS(BuildContext context, Tournament tournament) =>
    showCupertinoDialog(
        barrierDismissible: true,
        context: context,
        builder: (context) => CupertinoAlertDialog(
              title: const Text('Tournament'),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(tournament.name),
                  SizedBox(height: 10),
                  FadeInImage.assetNetwork(
                      placeholder: 'images/loading.gif',
                      image: tournament.urlProfile)
                ],
              ),
              actions: [
                TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text('cancel')),
                TextButton(
                    onPressed: () => Navigator.pop(context), child: Text('ok'))
              ],
            ));

displayDialogAndroid(BuildContext context, Tournament tournament) => showDialog(
    barrierDismissible: true,
    barrierColor: Colors.transparent,
    context: context,
    builder: (context) => AlertDialog(
          title: const Text('Tournament'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(tournament.name),
              SizedBox(height: 10),
              FadeInImage.assetNetwork(
                  placeholder: 'images/loading.gif',
                  image: tournament.urlProfile)
            ],
          ),
          actions: [
            TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('cancel')),
            TextButton(
                onPressed: () => Navigator.pop(context), child: Text('ok'))
          ],
        ));

FadeInImage CreateTrailingImage(Tournament tournament) {
  return FadeInImage.assetNetwork(
    placeholder: 'images/loading.gif',
    image: tournament.urlProfile,
    fit: BoxFit.scaleDown,
  );
}
