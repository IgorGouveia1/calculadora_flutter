import 'package:calculadora_flutter/components/button.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Calculadora());
}

class Calculadora extends StatefulWidget {
  const Calculadora({Key? key}) : super(key: key);

  @override
  State<Calculadora> createState() => _CalculadoraState();
}

class _CalculadoraState extends State<Calculadora> {
  late int numeroAnterior;
  late int numeroPosterior;
  late String historico = '';
  late String res;
  late String operacao = '';
  late String display = '';

  void btnOnClick(String btnVal) {
    print(btnVal);

    if (btnVal == 'C') {
      display = '';
      numeroAnterior = 0;
      numeroPosterior = 0;
      res = '';
      operacao;
    } else if (btnVal == '+' ||
        btnVal == '-' ||
        btnVal == 'X' ||
        btnVal == '/') {
      numeroAnterior = int.parse(display);
      res = '';
      operacao = btnVal;
    } else if (btnVal == '=') {
      numeroPosterior = int.parse(display);

      if (operacao == '+') {
        res = (numeroAnterior + numeroPosterior).toString();
        historico = numeroAnterior.toString() +
            operacao.toString() +
            numeroPosterior.toString();
      }
      if (operacao == '-') {
        res = (numeroAnterior - numeroPosterior).toString();
        historico = numeroAnterior.toString() +
            operacao.toString() +
            numeroPosterior.toString();
      }
      if (operacao == 'X') {
        res = (numeroAnterior * numeroPosterior).toString();
        historico = numeroAnterior.toString() +
            operacao.toString() +
            numeroPosterior.toString();
      }
      if (operacao == '/') {
        res = (numeroAnterior / numeroPosterior).toString();
        historico = numeroAnterior.toString() +
            operacao.toString() +
            numeroPosterior.toString();
      }
    } else {
      res = int.parse(display + btnVal).toString();
    }
    setState(() {
      display = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Calculadora'),
        ),
        backgroundColor: Colors.black12,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              alignment: const Alignment(1.0, 1.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  historico,
                  style: const TextStyle(fontSize: 24, color: Colors.white54),
                ),
              ),
            ),
            Container(
              alignment: const Alignment(1.0, 1.0),
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Text(
                  display,
                  style: const TextStyle(fontSize: 48, color: Colors.white),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  NumberButton(
                    text: '0',
                    callback: btnOnClick,
                  ),
                  NumberButton(
                    text: 'C',
                    callback: btnOnClick,
                  ),
                  NumberButton(
                    text: 'X',
                    callback: btnOnClick,
                  ),
                  NumberButton(
                    text: '/',
                    callback: btnOnClick,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  NumberButton(
                    text: '7',
                    callback: btnOnClick,
                  ),
                  NumberButton(
                    text: '8',
                    callback: btnOnClick,
                  ),
                  NumberButton(
                    text: '9',
                    callback: btnOnClick,
                  ),
                  NumberButton(
                    text: '+',
                    callback: btnOnClick,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  NumberButton(
                    text: '4',
                    callback: btnOnClick,
                  ),
                  NumberButton(
                    text: '5',
                    callback: btnOnClick,
                  ),
                  NumberButton(
                    text: '6',
                    callback: btnOnClick,
                  ),
                  NumberButton(
                    text: '-',
                    callback: btnOnClick,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  NumberButton(
                    text: '1',
                    callback: btnOnClick,
                  ),
                  NumberButton(
                    text: '2',
                    callback: btnOnClick,
                  ),
                  NumberButton(
                    text: '3',
                    callback: btnOnClick,
                  ),
                  NumberButton(
                    text: '=',
                    callback: btnOnClick,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
