import 'package:flutter/material.dart';
import 'package:votoan_idos/Voting.dart';
import 'Voting.dart';
import 'prespage.dart';
import 'Vpres.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => const HomeRoute(),
      '/vote': (context) => VoteRoute(),
      '/pres': (context) => Pres(),
      '/vpres': (context) => VicePres(),
      '/sec': (context) => Sec(),
      '/subsec': (context) => SubSec(),
      '/tre': (context) => Tre(),
      '/subtre': (context) => SubTre(),
      '/audi': (context) => Audi(),
      '/end': (context) => End(),
    },
  ));
}

class HomeRoute extends StatelessWidget {
  const HomeRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 41, 26, 74),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 120),
            child: Column(
              children: [
                Image(
                  image: AssetImage('images/logo.png'),
                ),
                Text(
                  'VOTING APP',
                  style: TextStyle(
                      color: Color.fromARGB(255, 157, 10, 248),
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                ),
                SizedBox(height: 20),
                Container(
                  child: Center(
                    child: GestureDetector(
                      onTap: (() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => VoteRoute()),
                        );
                      }),
                      child: Container(
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(255, 255, 64, 207),
                                spreadRadius: 1,
                                blurRadius: 8,
                                offset: Offset(4, 4),
                              ),
                              BoxShadow(
                                color: Color.fromARGB(255, 171, 240, 246),
                                spreadRadius: 2,
                                blurRadius: 8,
                                offset: Offset(-4, -4),
                              )
                            ]),
                        child: Center(
                          child: Text(
                            'User',
                            style: TextStyle(
                              color: Color.fromARGB(255, 217, 0, 255),
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
