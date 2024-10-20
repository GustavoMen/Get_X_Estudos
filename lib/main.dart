import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:getx_project/Pages/Start/page1.dart';
import 'package:getx_project/Pages/home_page.dart';
import 'package:getx_project/Pages/middlewares/middlewares_page.dart';
import 'package:getx_project/Pages/post_params/arguments_param_page.dart';
import 'package:getx_project/Pages/post_params/path_param_page.dart';
import 'package:getx_project/Pages/post_params/post_params_page.dart';
import 'package:getx_project/Pages/post_params/query_param_page.dart';
import 'package:getx_project/Pages/route_not_found/not_found_page.dart';

import 'Pages/middlewares/routes_middlewares.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/home',
      unknownRoute: GetPage(name: '/404', page: () => const NotFoundPage()),
      getPages: [
        GetPage(name: '/home', page: () => const HomePage()),
        GetPage(name: '/start/page1', page: () => const Page1()),
        GetPage(
          name: '/postParams', 
          page: () => const PostParams(),
          children: [
            GetPage(name: '/pathParam/:name/journeyGetX', page: () => const PathParamPage()),
            GetPage(name: '/arguments', page: () => const ArgumentsParamPage()),
            GetPage(name: '/queryParam', page: () => const QueryParamPage()),
          ]
        ),
        GetPage(
          name: '/middlwares',
          page: () => const MiddlewaresPage(),
          middlewares: [
            RoutesMiddleware(priority: 1)
          ]
          )
      ],
    );
  }
}
