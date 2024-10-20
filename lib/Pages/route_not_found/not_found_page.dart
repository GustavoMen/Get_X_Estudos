import 'package:flutter/material.dart';

class NotFoundPage extends StatelessWidget {

  const NotFoundPage({ super.key });

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('Not Found Page',
           textAlign: TextAlign.center,
           style: TextStyle(
            fontSize: 20,
           ),
           ),
          ),
           body: Container(),
       );
  }
}