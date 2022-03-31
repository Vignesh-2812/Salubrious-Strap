import 'package:flutter/material.dart';
import 'package:healthapp/docpatientlist.dart';

class Addsuccess extends StatefulWidget {
  const Addsuccess({
    Key? key,
  }) : super(key: key);

  @override
  State<Addsuccess> createState() => _Addsuccess();
}

Color themeColor = Colors.cyan;

class _Addsuccess extends State<Addsuccess> {
  double screenWidth = 600;
  double screenHeight = 400;
  Color textColor = const Color(0xFF32567A);

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 170,
              padding: EdgeInsets.all(35),
              decoration: BoxDecoration(
                color: themeColor,
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                "assets/images/success.jpeg",
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: screenHeight * 0.1),
            Text(
              "Thank You!",
              style: TextStyle(
                color: themeColor,
                fontWeight: FontWeight.w600,
                fontSize: 36,
              ),
            ),
            SizedBox(height: screenHeight * 0.01),
            Text(
              "Patient added Successfully",
              style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.w400,
                fontSize: 17,
              ),
            ),
            SizedBox(height: screenHeight * 0.05),
            Text(
              "",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black54,
                fontWeight: FontWeight.w400,
                fontSize: 14,
              ),
            ),
            FloatingActionButton.extended(
                backgroundColor: Colors.cyan,
                foregroundColor: Colors.black,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Dochome(
                              patients: List<String>.generate(
                                  (20), (i) => "Patient: $i"),
                            )),
                  );
                },
                label: Text('CONTINUE'),
                icon: Icon(Icons.arrow_circle_right_sharp))
          ],
        ),
      ),
    );
  }
}
