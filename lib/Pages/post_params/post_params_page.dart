import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class PostParams extends StatelessWidget {

  const PostParams({ super.key });

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('Envio de Parametros'),),
           body: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: (){
                  Get.toNamed('/postParams/arguments', arguments: {
                    'name': 'Gustavo',
                    'message': 'Parabens pela iniciativa'
                  });
                }, child: const Text('Arguments')),
                ElevatedButton(onPressed: (){
                  Get.toNamed('/postParams/pathParam/gustavo/journeyGetX'); 
                }, child: const Text('Path Param')),
                ElevatedButton(onPressed: (){
                  Get.toNamed('/postParams/queryParam?nome=Gustavo&id=10&nota=100'); 
                }, child: const Text('Query Param Simple')),
                ElevatedButton(onPressed: (){
                  Get.toNamed('/postParams/queryParam', parameters: {
                    'nome': 'gustavo',
                    'id': '12',
                    'nota': '10'
                  }); 
                }, child: const Text('Query Param Complex')),
              ],
            ),
           ),
       );
  }
}