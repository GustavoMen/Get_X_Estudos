import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class QueryParamPage extends StatelessWidget {

  const QueryParamPage({ super.key });

   @override
   Widget build(BuildContext context) {
 
       return Scaffold(
           appBar: AppBar(title: const Text('QueryParam'),),
           body: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(Get.parameters['nome'].toString()),
                Text(Get.parameters['id'].toString()),
                Text(Get.parameters['nota'].toString()),
              ],
            ),
           ),
       );
  }
}