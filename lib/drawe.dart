import 'package:flutter/material.dart';
import 'package:my_application/api-app/ui/app.dart';
import 'package:my_application/todo_list/ui/todo_list_app.dart';
import 'package:transition/transition.dart';

class Drawe extends StatefulWidget {
  const Drawe({super.key});

  @override
  State<Drawe> createState() => _DraweState();
}

class _DraweState extends State<Drawe> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xFFd2efff),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/profile.png'),
                    radius: 30,
                  ),
                ),
                Text(
                  'Rehab',
                  style: TextStyle(
                    color: Colors.black45,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'rhobah@hotmail.com',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),

          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              Navigator.of(context).pushNamed('/home');
            },
          ),

          ListTile(
            leading: Icon(Icons.filter_list),
            title: const Text("Breaking Bad App"),
            onTap: () {
              Navigator.push(
                  context,
                  Transition(
                      child: const BreakingBadApp(),
                      transitionEffect: TransitionEffect.FADE));
            },
            splashColor:  Color(0xFFd2efff),
          ),
          ListTile(
            leading: Icon(Icons.list_alt_outlined),
            title: const Text("Todo List App"),
            onTap: () {
              Navigator.push(
                  context,
                  Transition(
                      child: const TodoListApp(),
                      transitionEffect: TransitionEffect.FADE));
            },
            splashColor: Colors.deepPurple[100],
          ),
        ],
      ),
    );
  }
}
































/*
import 'package:flutter/material.dart';


class Drawe extends StatefulWidget {
  const Drawe({super.key});

  @override
  State<Drawe> createState() => _DraweState();
}

class _DraweState extends State<Drawe> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xFFd2efff),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/profile.png'),
                    radius: 30,
                  ),
                ),
                Text(
                  'Rehab',
                  style: TextStyle(
                    color: Colors.black45,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'rhobah@hotmail.com',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.pets),
            title: Text('Profile'),
          ),
          ListTile(
            leading: Icon(Icons.add_alert),
            title: Text('Alerts'),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
          ),

          Divider(),
          ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              onTap: () {
                Navigator.of(context).pushNamed('/login');
              }),
        ],
      ),
    );
  }
}
*/
