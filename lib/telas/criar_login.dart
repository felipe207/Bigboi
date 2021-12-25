import 'package:flutter/material.dart';
import 'package:bigboi/constantes.dart';

class TelaCriarLogin extends StatefulWidget {
  TelaCriarLogin({Key? key}) : super(key: key);
  @override
  _TelaCriarLoginState createState() => _TelaCriarLoginState();
}

class _TelaCriarLoginState extends State<TelaCriarLogin> {
  TextEditingController txtloginCriacao = TextEditingController();
  TextEditingController txtsenhaCriacao = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.all(80),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: txtloginCriacao,
                decoration: InputDecoration(
                    labelText: 'Primeiro nome',
                    labelStyle: TextStyle(
                        color: Colors.black,
                        height: 0.5, // 0,1 - label will sit on top of border
                        fontFamily: 'Fira Code',
                        fontSize: 23.0),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: kCorYellow, width: 2))),
              ),
              TextField(
                controller: txtloginCriacao,
                decoration: InputDecoration(
                    labelText: 'Segundo nome',
                    labelStyle: TextStyle(
                        color: Colors.black,
                        height: 0.5, // 0,1 - label will sit on top of border
                        fontFamily: 'Fira Code',
                        fontSize: 23.0),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: kCorYellow, width: 2))),
              ),
              TextField(
                controller: txtloginCriacao,
                decoration: InputDecoration(
                    labelText: 'Endereço',
                    labelStyle: TextStyle(
                        color: Colors.black,
                        height: 0.5, // 0,1 - label will sit on top of border
                        fontFamily: 'Fira Code',
                        fontSize: 23.0),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: kCorYellow, width: 2))),
              ),
              TextField(
                controller: txtloginCriacao,
                decoration: InputDecoration(
                    labelText: 'Login',
                    labelStyle: TextStyle(
                        color: Colors.black,
                        height: 0.5, // 0,1 - label will sit on top of border
                        fontFamily: 'Fira Code',
                        fontSize: 23.0),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: kCorYellow, width: 2))),
              ),
              TextField(
                controller: txtsenhaCriacao,
                decoration: InputDecoration(
                    labelText: 'Senha',
                    labelStyle: TextStyle(
                        color: Colors.black,
                        height: 0.5, // 0,1 - label will sit on top of border
                        fontFamily: 'Fira Code',
                        fontSize: 23.0),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: kCorYellow, width: 2))),
              ),
              TextField(
                controller: txtloginCriacao,
                decoration: InputDecoration(
                    labelText: 'Digite novamente sua senha',
                    labelStyle: TextStyle(
                        color: Colors.black,
                        height: 0.5, // 0,1 - label will sit on top of border
                        fontFamily: 'Fira Code',
                        fontSize: 23.0),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: kCorYellow, width: 2))),
              ),
              // Expanded(
              SizedBox(height: 23.0),
              // ),
              // ignore: deprecated_member_use
              RaisedButton(
                child: Text(
                  "salvar",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: 'Fira Code',
                  ),
                ),
                color: kCorSplashScreen,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
