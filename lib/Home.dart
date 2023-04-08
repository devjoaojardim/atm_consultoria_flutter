import 'package:atm_consultoria/TelaCliente.dart';
import 'package:atm_consultoria/TelaContato.dart';
import 'package:atm_consultoria/TelaEmpresa.dart';
import 'package:atm_consultoria/TelaServico.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void _OpenScreenEmpresa() {

    Navigator.push(context,
        MaterialPageRoute(builder:
            (context) => TelaEmpresa())
    );
    print("Funcionou");
  }
 void _OpenScreenServico() {
   Navigator.push(context,
       MaterialPageRoute(builder:
           (context) => TelaServico())
   );
    print("Funcionou");
  }
  void _OpenScreenClientes() {
    Navigator.push(context,
        MaterialPageRoute(builder:
            (context) => TelaCliente())
    );
    print("Funcionou");
  }

  void _OpenScreenContato() {
    Navigator.push(context,
        MaterialPageRoute(builder:
            (context) => TelaContato())
    );
    print("Funcionou");
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ATM Consultoria"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("images/logo.png"),
            Padding(
              padding: EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    child: Image.asset("images/menu_empresa.png"),
                    onTap: _OpenScreenEmpresa,
                  ),
                  GestureDetector(
                    child: Image.asset("images/menu_servico.png"),
                    onTap: _OpenScreenServico,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    child: Image.asset("images/menu_cliente.png"),
                    onTap: _OpenScreenClientes,
                  ),
                  GestureDetector(
                    child: Image.asset("images/menu_contato.png"),
                    onTap: _OpenScreenContato,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
