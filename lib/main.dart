import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providercolorapp/controller/home_screen_controller.dart';
import 'package:providercolorapp/view/home_screen/HomeScreen.dart';

void main()
{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget
{
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context)
  {
    return ChangeNotifierProvider(
      create: (context) => HomeScreenController(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: HomeScreen(),
      ),
    );
  }
}

