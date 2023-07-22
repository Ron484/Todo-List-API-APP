import 'package:flutter/material.dart';
import 'package:my_application/drawe.dart';
import 'package:my_application/todo_list/services/list_api.dart';
import 'package:my_application/todo_list/ui/components/todo_item.dart';


class TodoListApp extends StatefulWidget {
  const TodoListApp({super.key});

  @override
  State<TodoListApp> createState() => _TodoListAppState();
}

class _TodoListAppState extends State<TodoListApp> {
  bool showListView = false;
  List characterList = [];

  void getAllCharacters() async {
    ListApi.getCharacters().then((response) {
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
          title: Text("Todo List App"),
          centerTitle: true,
          backgroundColor: Color(0xFFd2efff),
          elevation: 5,
        ),
        drawer: const Drawe(),

        body: showListView
            ? ListView.builder(
          itemCount: characterList.length,
          itemBuilder: (context, index) {
            return ToDoItem (
              character: characterList[index],
            );
          },
        )
            : Container(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              if (characterList.isNotEmpty) {
                showListView = true;
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('No items to display'),
                    ),
                );
              }
            });
          },
          child: const Icon(Icons.add),
        ),
        );

    }
  }
