import 'package:bigboi/services/auth_service.dart';
import 'package:bigboi/telas/criar_login.dart';
import 'package:bigboi/telas/tela_login.dart';
import 'package:bigboi/telas/usuario/homeUsuario.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AuthCheck extends StatefulWidget {
  AuthCheck({Key? key}) : super(key: key);

  @override
  _AuthCheckState createState() => _AuthCheckState();
}

class _AuthCheckState extends State<AuthCheck> {
  @override
  Widget build(BuildContext context) {
    AuthService auth = Provider.of<AuthService>(context);
    if (auth.isLoading)
      return loading();
    else if (auth.usuario == null)
      return TelaLogin();
    else
      return TelaHomeUsuario();
  }

  loading() {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
