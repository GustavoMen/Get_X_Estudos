
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class RoutesMiddleware extends GetMiddleware{
  RoutesMiddleware({super.priority});

  @override
  GetPage? onPageCalled(GetPage? page) {
    
    debugPrint('Executando middlwaree');
    return super.onPageCalled(page);
  }
}