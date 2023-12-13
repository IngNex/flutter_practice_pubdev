import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_practice_navigationbar/firebase_options.dart';
import 'package:flutter_practice_navigationbar/pages.dart';
import 'package:flutter_practice_navigationbar/switch_personal.dart/provider/bloc_switch.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SwitchState(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Pages(),
      ),
    );
  }
}
// }
// import 'package:flutter/material.dart';
// import 'package:flutter_practice_navigationbar/pages.dart';
// import 'package:flutter_practice_navigationbar/theme_color/provider.dart/theme_provider.dart';
// import 'package:provider/provider.dart';

// void main() {
//   runApp(
//     ChangeNotifierProvider(
//       create: (_) => ThemeProvider(),
//       child: MyApp(),
//     ),
//   );
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final themeProvider = Provider.of<ThemeProvider>(context);

//     return MaterialApp(
//       title: 'Theme and Primary Color Toggle',
//       debugShowCheckedModeBanner: false,
//       theme: themeProvider.getCurrentTheme(),
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Theme and Primary Color Toggle'),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Text(
//                 'Change Theme and Primary Color',
//                 style: TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               SizedBox(height: 20),
//               ElevatedButton(
//                 onPressed: () {
//                   themeProvider.toggleTheme();
//                 },
//                 child: Text('Toggle Theme'),
//               ),
//               SizedBox(height: 20),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   ElevatedButton(
//                     onPressed: () {
//                       themeProvider.changePrimaryColor(Colors.red);
//                     },
//                     style: ElevatedButton.styleFrom(primary: Colors.red),
//                     child: Text('Red'),
//                   ),
//                   SizedBox(width: 10),
//                   ElevatedButton(
//                     onPressed: () {
//                       themeProvider.changePrimaryColor(Colors.blue);
//                     },
//                     style: ElevatedButton.styleFrom(primary: Colors.blue),
//                     child: Text('Blue'),
//                   ),
//                   SizedBox(width: 10),
//                   ElevatedButton(
//                     onPressed: () {
//                       themeProvider.changePrimaryColor(Colors.green);
//                     },
//                     style: ElevatedButton.styleFrom(primary: Colors.green),
//                     child: Text('Green'),
//                   ),
                  
//                 ],
//               ),
//                ElevatedButton(
//               onPressed: () {
//                 Navigator.of(context).push(
//                   MaterialPageRoute(
//                     builder: (context) => Pages(),
//                   ),
//                 );
//               },
//               child: const Text('MainFbStorage'),)
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
