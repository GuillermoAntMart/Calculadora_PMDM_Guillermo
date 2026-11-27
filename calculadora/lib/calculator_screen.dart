import 'package:flutter/material.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({Key? key}) : super(key: key);

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String display = '0';
  double primerNumero = 0;
  String operador = '';
  bool reiniciarPantalla = false;

  void pulsarNumero(String numero) {
    setState(() {
      if (display == '0' || display == 'Error' || reiniciarPantalla) {
        display = numero;
        reiniciarPantalla = false;
      } else {
        display = display + numero;
      }
    });
  }

  void pulsarComa() {
    setState(() {
      if (reiniciarPantalla || display == 'Error') {
        display = '0,';
        reiniciarPantalla = false; 
      } else if (!display.contains(',')) {
        display = display + ',';
      }
    });
  }