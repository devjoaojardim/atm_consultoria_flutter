import 'package:flutter/material.dart';

class TelaServico extends StatefulWidget {
  const TelaServico({Key? key}) : super(key: key);

  @override
  State<TelaServico> createState() => _TelaServicoState();
}

class _TelaServicoState extends State<TelaServico> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Serviço"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("images/logo.png"),
            Text("SERVIÇO!!!")
          ],
        ),
      ),
    );
  }
}