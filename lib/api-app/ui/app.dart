import 'package:flutter/material.dart';
import 'package:my_application/api-app/services/character_api.dart';
import 'package:my_application/drawe.dart';
import 'package:my_application/api-app/ui/components/app-item.dart';

class BreakingBadApp extends StatefulWidget {
  const BreakingBadApp({super.key});

  @override
  State<BreakingBadApp> createState() => _BreakingBadAppState();
}

class _BreakingBadAppState extends State<BreakingBadApp> {
  List characterList = [];

  void getAllCharacters() async {
    CharacterApi.getCharacters().then((response) {
      setState(() {
        characterList = response;
      });
      print(response);
    });
  }

  @override
  void initState() {
    super.initState();
    getAllCharacters();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Breaking Bad API APP"),
        backgroundColor:  Color(0xFFd2efff),
        elevation: 5,
      ),
      drawer: const Drawe(),
      body: ListView.builder(
        itemCount: characterList.length,
        itemBuilder: (context, index) {
          return BrakingBadItem(
            character: characterList[index],
          );
        },
      ),
    );
  }
}