import 'package:flutter/material.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = "snackbar_screen";

  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();

    final snackbar = SnackBar(
      content: const Text("olá, mundo!"),
      action: SnackBarAction(label: "Ok!", onPressed: () {}),
      duration: const Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void openDialog(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => AlertDialog(
              title: const Text("Tem certeza?"),
              content: const Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit."),
              actions: [
                TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text("Cancelar")),
                FilledButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text("Aceitar"))
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Snackbars e diálogos"),
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            FilledButton.tonal(
              child: Text("Licenças usadas"),
              onPressed: () {
                showAboutDialog(context: context, children: [
                  Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit.")
                ]);
              },
            ),
            FilledButton.tonal(
              child: Text("Mostrar diálogo"),
              onPressed: () => openDialog(context),
            )
          ]),
        ),
        floatingActionButton: FloatingActionButton.extended(
          label: const Text("Mostrar snackbar"),
          icon: const Icon(Icons.remove_red_eye_outlined),
          onPressed: () => showCustomSnackbar(context),
        ));
  }
}
