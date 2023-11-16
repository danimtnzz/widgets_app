import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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

  void openDialog(BuildContext context){
    showDialog(context: context, barrierDismissible: false, builder: (context)=> AlertDialog(
        title: const Text('¿Estás seguro?'),
        content: const Text('Mollit consequat cillum ex consectetur in nostrud culpa amet proident exercitation non.'),
        actions: [
          TextButton(onPressed: (){context.pop();}, child: const Text('Cancelar')),
          FilledButton(onPressed: (){}, child: const Text('Aceptar')),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars y Diálogos'),
      ),

      body: Center(
        child: Column(
          children: [
            FilledButton.tonal(onPressed: (){
              showAboutDialog(
                context: context,
                children: [
                  const Text('Esta app ha sido creada siguiendo el curso de Fernando Herrera: Flutter - Móvil: De cero a experto - Edición 2023')
                ]
              );
            },
            child: const Text('Licencias Usadas')),
            FilledButton.tonal(onPressed: () => openDialog(context),
            child: const Text('Mostrar diálogo')),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton.extended(
        onPressed: ()=> showCustomSnackbar(context), 
        label: const Text('Mostrar Snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
      ),
    );
  }
}