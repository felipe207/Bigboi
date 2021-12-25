import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:bigboi/widgets/auth_check.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:bigboi/constantes.dart';
import 'package:bigboi/telas/tela_login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'services/auth_service.dart';
import 'widgets/auth_check.dart';

//Future<void> main() async {
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  //runApp(Bigboi());
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => AuthService())
      // ChangeNotifierProvider(create: (context)=>ConRepository()),
      //  ChangeNotifierProvider(create: (context)=>AppSettings()),
      // ChangeNotifierProvider(create: (context)=>FavoritasRepositori()),
    ],
    child: Bigboi(),
  ));

  FirebaseFirestore.instance.collection('contact').doc().set({
    'name': 'joaquin',
    'phone': '(11)9 98529632',
    'e-mail': 'joaquin@gmail.com'
  });
}

class Bigboi extends StatelessWidget {
  const Bigboi({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light().copyWith(
          primaryColor: kCorYellow,
          scaffoldBackgroundColor: kCorYellow,
        ),
        home: AnimatedSplashScreen(
            splash: Icons.food_bank_sharp,
            duration: 3000,
            splashTransition: SplashTransition.fadeTransition,
            backgroundColor: kCorSplashScreen,
            nextScreen: AuthCheck()));
  }
}
