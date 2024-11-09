import 'package:flutter/material.dart';
import 'package:inspiraapp/pages/registration_page,.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

void navigateToPage(BuildContext context, Widget page) { 
  Navigator.push( context, MaterialPageRoute(builder: (context) => page),);
  }

    return Scaffold(
      appBar: AppBar(
        title: Text('Registro de Presença'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            padding: const EdgeInsets.only(top: 50.0), // Adiciona padding no topo
            child: GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              childAspectRatio: .7, // ajuste da proporção altura/largura
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Lógica para iniciar
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero, // bordas retas
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.play_arrow,
                        color: Colors.white,
                        size: 30,
                      ),
                      SizedBox(height: 8), // Espaço entre o ícone e o texto
                      Text(
                        'Iniciar',
                        style: TextStyle(
                          color: Colors.white, // cor da fonte
                          fontSize: 24, // tamanho da fonte
                          fontWeight: FontWeight.bold, // fonte mais espessa
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Lógica para finalizar
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.stop,
                        color: Colors.white,
                        size: 30,
                      ),
                      SizedBox(height: 8), // Espaço entre o ícone e o texto
                      Text(
                        'Finalizar',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Lógica para sair
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.exit_to_app,
                        color: Colors.white,
                        size: 30,
                      ),
                      SizedBox(height: 8), // Espaço entre o ícone e o texto
                      Text(
                        'Sair',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    navigateToPage(context, RegistrationPage());
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.edit,
                        color: Colors.white,
                        size: 30,
                      ),
                      SizedBox(height: 8), // Espaço entre o ícone e o texto
                      Text(
                        'Editar',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
