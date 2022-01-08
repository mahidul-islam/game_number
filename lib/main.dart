import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

final player = AudioCache(); //Define the player

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      navigateAfterSeconds: const AfterSplash(),
      title: const Text(
        'my 💕 daughter',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
      ),
      image: Image.asset(
        "assets/images/name.gif",
        // width: MediaQuery.of(context).size.width,
        // height: 50,
        fit: BoxFit.cover,
      ),
      backgroundColor: Colors.white,
      styleTextUnderTheLoader: const TextStyle(),
      photoSize: 100.0,
      // onClick: () => print("Flutter Egypt"),
      loaderColor: Colors.red,
      loadingText: const Text('please wait'),
      loadingTextPadding: EdgeInsets.zero,
      useLoader: true,
    );
  }
}

class AfterSplash extends StatelessWidget {
  const AfterSplash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Kids Game"), automaticallyImplyLeading: false),
      body: const Center(
        child: Text(
          "Done!",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
        ),
      ),
    );
  }
}


//     class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//         future: Future.delayed(Duration(seconds: 3)),
//         builder: (context, AsyncSnapshot snapshot) {
//           // Show splash screen while waiting for app resources to load:
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             player.play('sounds/notification_ambient.wav'); //Here is what will play sounds.

//             return MaterialApp(home: Splash());
//           } else {
//             // Loading is done, return the app:
//             return MaterialApp(
//                 debugShowCheckedModeBanner: false,
//                 home: TodoApp(),
//                 title: 'Toodolee',
//                 theme: ThemeData(
//                   brightness: Brightness.light,
//                   fontFamily: "WorkSans",
//                 ));
//           }
//         });
//   }
// }

// class Splash extends StatefulWidget {
//   @override
//   _SplashState createState() => _SplashState();
// }

// class _SplashState extends State<Splash> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         color: Colors.white70,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             FadeIn(
//               duration: Duration(milliseconds: 1200),
//               child: Center(
//                   child: Icon(CarbonIcons.checkmark,
//                       size: 90, color: Colors.black87)),
//             ),
//             FadeOut(
//                 duration: Duration(milliseconds: 1100),
//                 child: Center(child: Text("Made by Proco :love"))),
//           ],
//         ),
//       ),
//     );
//   }
// }