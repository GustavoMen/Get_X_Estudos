import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class PathParamPage extends StatelessWidget {

  const PathParamPage({ super.key });

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('PathParam'),),
           body: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(Get.parameters['name'].toString())
              ],
            ),
           ),
       );
  }
}