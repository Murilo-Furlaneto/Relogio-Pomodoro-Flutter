import 'package:flutter/material.dart';
import '../store/pomodoro_store.dart';
import 'package:provider/provider.dart';

class EntradaTempo extends StatelessWidget {
  const EntradaTempo(
      {Key? key, required this.titulo, required this.valor, this.inc, this.dec})
      : super(key: key);

  final String titulo;
  final int valor;
  final void Function()? inc;
  final void Function()? dec;

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center, 
       children: [
      Text(titulo, style: const TextStyle(fontSize: 25)),
      const SizedBox(height: 10),
      Row(
        mainAxisAlignment: MainAxisAlignment.center, 
        children: [
        ElevatedButton(
          onPressed: dec,
          child: const Icon(Icons.arrow_downward, color: Colors.white),
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            padding: const EdgeInsets.all(13),
            primary: store.estaTrabalhando() ? Colors.red : Colors.green,
            minimumSize: const Size(60, 50),
            
          ),
        ),
        Text('$valor min', style: const TextStyle(fontSize: 18)),
        ElevatedButton(
          onPressed: inc,
          child: const Icon(Icons.arrow_upward, color: Colors.white),
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            padding: const EdgeInsets.all(13),
            primary: store.estaTrabalhando() ? Colors.red : Colors.green,
            minimumSize: const Size(60, 50),
          ),
        ),
      ])
    ]);
  }
}
