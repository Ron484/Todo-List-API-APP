import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  MaterialColor color = Colors.deepPurple;
  TextEditingController user = TextEditingController();
  TextEditingController password = TextEditingController();
  double height = 0;
  double width = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(milliseconds: 200), () {
      setState(() {
        height = 440;
        width = 340;
      });
    });
    Future.delayed(Duration(milliseconds: 700), () {
      setState(() {
        height = 450;
        width = 350;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 140,
            child: Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(1),
                child: Image.asset(
                  'assets/pet33.png',
                  height: 200,
                  width: 100,
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(
                    'HELLO THERE,          ',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w900,
                        fontFamily: 'Goudy Stout'),
                  ),
                ),
                Text(
                  'WELCOME BACK      ',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                SizedBox(height: 70),
                Text(
                  'sign in to continue                                     ',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                    color: Colors.black54,
                  ),
                ),
                SizedBox(height: 22),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextField(
                    textAlign: TextAlign.left,
                    controller: user,
                    keyboardType: TextInputType.emailAddress,
                    obscureText: false,
                    decoration: InputDecoration(
                      labelText: 'Username',
                      prefixIcon: const Icon(Icons.account_circle_outlined),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextField(
                    textAlign: TextAlign.left,
                    controller: password,
                    keyboardType: TextInputType.emailAddress,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      prefixIcon: Icon(Icons.password),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(height: 50),
                SizedBox(
                  width: 370, // set the desired width
                  height: 50, // set the desired height

                  child: ElevatedButton(
                    onPressed: () {
                      String _user = user.text.toString();
                      String _password = password.text.toString();
                      if (_user.isNotEmpty && _password.isNotEmpty) {
                        Navigator.of(context).pushNamed('/home');
                      } else {
                        print("Error");
                      }
                      print("UserName is: ${user.text.toString()}");
                      print("Password is: ${password.text.toString()}");
                      print("Done sucessfully");
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Color(0xFFd2efff), // set the background color
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(1.0),
                        ),
                      ),
                    ),
                    child: Text('GO'),
                  ),
                ),
                SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed('/signup');
                  },
                  child: Text("NEW USER? SIGN UP"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
