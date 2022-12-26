import 'package:flutter/material.dart';
import 'package:store_app/modules/home_page.dart';
import 'package:store_app/modules/update_product_page.dart';

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomePage.id,
      routes: {
        HomePage.id : (context)=>const HomePage(),
        UpdateProductPage.id : (context)=>const UpdateProductPage(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFFFFFFF),
        primarySwatch: Colors.blue,
      ),
    );
  }
}
