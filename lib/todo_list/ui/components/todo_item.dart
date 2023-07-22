import 'package:flutter/material.dart';
import 'package:my_application/todo_list/model/list.dart';
import 'package:my_application/todo_list/ui/components/todo_item_full.dart';
import 'package:transition/transition.dart';


class ToDoItem extends StatefulWidget {
  Item character;
  ToDoItem({super.key, required this.character});

  @override
  State<ToDoItem> createState() => _ToDoItemState();
}

class _ToDoItemState extends State<ToDoItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListTile(
        leading: CircleAvatar(
          radius: 15,
          child: Text(
            widget.character.id.toString(),
            style: TextStyle(fontSize: 18),
          ),
        ),

        title: Text(
          widget.character.title,
          style: TextStyle(fontSize: 18),
        ),
        /*subtitle: Text(
          widget.character.id.toString(),
          style: TextStyle(fontSize: 18),
        ),*/
        trailing: Text(
          widget.character.completed.toString(),
          style: TextStyle(fontSize: 18),
        ),
        onTap: () {
          Navigator.push(
              context,
              Transition(
                  child: ItemFull(
                    character: widget.character,
                  ),
                  transitionEffect: TransitionEffect.RIGHT_TO_LEFT));
        },
      ),
    );
  }
}