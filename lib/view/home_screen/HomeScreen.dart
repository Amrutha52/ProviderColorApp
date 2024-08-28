import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providercolorapp/controller/home_screen_controller.dart';

class HomeScreen extends StatefulWidget
{
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
{
  @override
  Widget build(BuildContext context)
  {
    //var homeProvider = Provider.of<HomeScreenController>(context);

    return Consumer<HomeScreenController>(builder: (context, homeProvider, child) => Scaffold(
      backgroundColor: homeProvider.scaffoldBg,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: (){
                Provider.of<HomeScreenController>(context, listen: false).updateColor(Colors.red);
              },
              child: Container(
                height: 70,
                width: 200,
                color: Colors.red,
              ),
            ),
            InkWell(
              onTap: (){
                Provider.of<HomeScreenController>(context, listen: false).updateColor(Colors.yellow);
              },
              child: Container(
                height: 70,
                width: 200,
                color: Colors.yellow,
              ),
            ),
            InkWell(
              onTap: (){
                Provider.of<HomeScreenController>(context, listen: false).updateColor(Colors.orangeAccent);
              },
              child: Container(
                height: 70,
                width: 200,
                color: Colors.orangeAccent,
              ),
            ),
            InkWell(
              onTap: (){
                Provider.of<HomeScreenController>(context, listen: false).updateColor(Colors.blueGrey);
              },
              child: Container(
                height: 70,
                width: 200,
                color: Colors.blueGrey,
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
