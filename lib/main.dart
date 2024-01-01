import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: NewYearWishes(),
      ),
    );
  }
}

class NewYearWishes extends StatefulWidget {
  @override
  _NewYearWishesState createState() => _NewYearWishesState();
}

class _NewYearWishesState extends State<NewYearWishes> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                "https://images.unsplash.com/photo-1524334228333-0f6db392f8a1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1920&q=80",
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Center(
          child: NewYearBody(),
        ),
      ],
    );
  }
}

class NewYearBody extends StatefulWidget {
  @override
  _NewYearBodyState createState() => _NewYearBodyState();
}

class _NewYearBodyState extends State<NewYearBody> {
  int count = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Happy New Year",
          style: TextStyle(
            fontSize: 50.0,
            letterSpacing: 5.0,
            color: Colors.white,
            shadows: [
              Shadow(
                blurRadius: 25.0,
                color: Colors.white,
              ),
              Shadow(
                blurRadius: 50.0,
                color: Colors.white,
              ),
              Shadow(
                blurRadius: 100.0,
                color: Colors.white,
              ),
            ],
            fontFamily: "Megrim",
          ),
        ),
        Text(
          "2024",
          style: TextStyle(
            fontSize: 80.0,
            letterSpacing: 10.0,
            color: Colors.white,
            shadows: [
              Shadow(
                blurRadius: 25.0,
                color: Colors.white,
              ),
              Shadow(
                blurRadius: 50.0,
                color: Colors.white,
              ),
              Shadow(
                blurRadius: 100.0,
                color: Colors.white,
              ),
            ],
            fontFamily: "Neonderthaw",
          ),
        ),
        ElevatedButton(
          onPressed: () {
            if (count != 0) {
              // Remove previous styles
              setState(() {
                count = 0;
              });
            }
            // Add new styles
            setState(() {
              count++;
            });
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(20.0),
            shape: CircleBorder(),
            side: BorderSide(
              color: Colors.white,
              width: 4.0,
            ),
            primary: getColor(count),
          ),
          child: Text(
            "Click Again!",
            style: TextStyle(
              fontSize: 15.0,
              color: Colors.black,
              fontFamily: "Allerta Stencil",
            ),
          ),
        ),
      ],
    );
  }

  Color getColor(int count) {
    switch (count) {
      case 1:
        return Colors.white;
      case 2:
        return Colors.green;
      case 3:
        return Colors.orange;
      case 4:
        return Colors.pink;
      case 5:
        return Colors.deepPurple;
      case 6:
        return Colors.blue;
      case 7:
        return Colors.red;
      case 8:
        return Colors.yellow;
      default:
        return Colors.white;
    }
  }
}
