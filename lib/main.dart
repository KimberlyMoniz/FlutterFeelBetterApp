import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
      home: ComplimentGenerator())
    );



class ComplimentGenerator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title : Text("Welcome to Feel Good",
      style: TextStyle(
        fontFamily: "GreatVibes",
        fontSize: 35,
      ),
      ),
        backgroundColor: Colors.pink[100],
        toolbarHeight: 100,
        centerTitle: true,
      ),
        backgroundColor: Colors.pink[300],
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Enter your name:',
                style: TextStyle(
                  fontSize: 22.0,
                  fontFamily: 'Arima',
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.pink[200],
                  ),
                  padding: EdgeInsets.all(0.0),
                  child: TextField(
                    onSubmitted: (String name) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DisplayCompliment(
                              name: name,
                              ),
                        ),
                      );
                    },
                    decoration: InputDecoration(

                    //  filled: true,
                    //  fillColor: Colors.white,
                    //  hintText: 'Enter your name',
                     border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

    );
  }
}

class DisplayCompliment extends StatelessWidget {
  DisplayCompliment({required this.name});

  final String name;
  final List<String> compliments = [
    "You're amazing!",
    "You're a true inspiration.",
    "You're a ray of sunshine.",
    "You light up the room.",
    "You're beautiful inside and out.",
    "You have a kind heart.",
    "You're a talented individual.",
    "You bring joy to those around you.",
    "You're a true gem.",
    "You make the world a better place."
  ];

  @override
  Widget build(BuildContext context) {
    final random = Random();
    int randomIndex = random.nextInt(compliments.length);

    return Scaffold(
      appBar: AppBar(
        title: Text("Feel Good",
          style: TextStyle(
            fontFamily: "GreatVibes",
            fontSize: 35,
          ),
        ),
        backgroundColor: Colors.pink[100],
        toolbarHeight: 100,
        centerTitle: true,
      ),
      backgroundColor: Colors.pink[300],
     // backgroundColor: Colors.green,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              '$name',
              style: TextStyle(
                fontSize: 40.0,
                color: Colors.white,
                fontFamily: 'GreatVibes',
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),

            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                compliments[randomIndex],
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Arima',
                ),
                textAlign: TextAlign.center,
              ),
            ),

            SizedBox(
              height: 40,
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(

               // width: double.infinity,
               // height: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),

                child: TextButton(

                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DisplayCompliment(
                            name: name,
                            ),
                      ),
                    );
                  },

                  child: Text(
                    'Generate Another Compliment',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontFamily: 'Arima',
                      color: Colors.pink[200],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
