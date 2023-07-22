import 'package:flutter/material.dart';
import 'package:my_application/todo_list/model/list.dart';


class ItemFull extends StatefulWidget {
  Item character;
  ItemFull({
    super.key,
    required this.character,
  });

  @override
  State<ItemFull> createState() => _ItemFullState();
}

class _ItemFullState extends State<ItemFull> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('list item'),
        centerTitle: true,
        backgroundColor: Color(0xFFd2efff),
        elevation: 5,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              radius: 30,
              child: Text(
                widget.character.id.toString(),
                style: TextStyle(fontSize: 18),
              ),
            ),
            /*Text(
              widget.character.id.toString(),
              style: TextStyle(fontSize: 24),
            ),*/
        Padding(
          padding: EdgeInsets.only(left: 16.0),
          child: Text(
              widget.character.title,
              style: TextStyle(fontSize: 24),
            ),
        ),
            Text(
              widget.character.completed.toString(),
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}