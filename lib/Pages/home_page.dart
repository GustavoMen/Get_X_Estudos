import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {

  const HomePage({ super.key });

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('Home Page'),),
           body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: (){
                  Get.toNamed('/start/page1');
                  }, 
                child: const Text('Pagina 1')),
                ElevatedButton(onPressed: (){
                  Get.toNamed('/pagina_não_existe');
                  }, 
                child: const Text('Pagina Inesxistente')),
                ElevatedButton(onPressed: (){
                  Get.toNamed('/postParams');
                  }, 
                child: const Text('Envio de Parametros')),
                ElevatedButton(onPressed: (){
                  Get.toNamed('/middlewares');
                  }, 
                child: const Text('Middlewares')),
              ],
            ),
           ),
       );
  }
}