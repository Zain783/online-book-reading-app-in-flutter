import 'package:flutter/material.dart';
import 'package:kdnfjkosngksfnglkfsng/contsants.dart';
import 'package:kdnfjkosngksfnglkfsng/splash_Screen.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'dart:async';
// class MyApp1 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Splash Screen',
//       theme: ThemeData(
//         primarySwatch: Colors.green,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: MyHomePage(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   void initState() {
//     super.initState();
//     Timer(
//         Duration(seconds: 3),
//         () => Navigator.pushReplacement(
//             context, MaterialPageRoute(builder: (context) => MyApp())));
//   }

//   @override
//   Widget build(BuildContext context) {
//     double width = MediaQuery.of(context).size.width;
//     // double height = MediaQuery.of(context).size.height;
//     return Column(
//       children: [
//         SizedBox(height: width / 3),
//         Container(
//           // height: height,
//           width: width,

//           child: Center(
//             child: Image(image: AssetImage('assets/a.png')),
//           ),
//         ),
//         SizedBox(
//           height: 30,
//           width: 33,
//         ),
//         CircularProgressIndicator()
//       ],
//     );
//   }
// }

// FlutterLogo(size: MediaQuery.of(context).size.height)
void main() {
  runApp(MyApp1());
}

class MyApp1 extends StatelessWidget {
  const MyApp1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Book App',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        textTheme: Theme.of(context).textTheme.apply(
              displayColor: kBlackColor,
            ),
      ),
      home: WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatefulWidget {
  @override
  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => MyApp())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/Bitmap.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Book_Z",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Container(
              child: Icon(Icons.book,size: 50,),
            ),
            CircularProgressIndicator()
          ],
        ),
      ),
    );
  }
}
