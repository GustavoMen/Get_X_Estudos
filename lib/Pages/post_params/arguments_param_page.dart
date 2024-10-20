import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class ArgumentsParamPage extends StatelessWidget {

  const ArgumentsParamPage({ super.key });

   @override
   Widget build(BuildContext context) {

      
      Map<String, String> arguments = Get.arguments; 
       return Scaffold(
           appBar: AppBar(title: const Text('Arguments'),),
           body: Center(
            child: Text('Ola ${arguments['name'] ?? 'nome não encontrado'}, ${arguments['message']}'),
           ),
       );
  }
}