import 'package:flutter/material.dart';

//TODO: optimizar con getx
class SnackbarScreen extends StatelessWidget {
  const SnackbarScreen({super.key});
  static const name = 'snackbar_screen';

  void showCustomSnackbar(BuildContext context){
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text('Hola Mundo'),
        action: SnackBarAction(label: 'Ok', onPressed: (){}),
        duration: const Duration(seconds: 2),
      )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars y Diálogos'),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: ()=> showCustomSnackbar(context), 
        label: const Text('Mostrar Snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
      ),
    );
  }
}