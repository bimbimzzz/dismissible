import 'package:dismissible/data/foodData.dart';
import 'package:dismissible/model/food.dart';
import 'package:flutter/material.dart';

class PageScreen extends StatefulWidget {
  const PageScreen({super.key});

  @override
  State<PageScreen> createState() => _PageScreenState();
}

//Welcome back to my channel "Bimbimzzz Project"
//This video about make a Listview Builder, so .. watch out !

class _PageScreenState extends State<PageScreen> {
  List<Food> daftarMenu = List.of(allFood);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: daftarMenu.length,
        itemBuilder: (context, index) {
          final item = daftarMenu[index];
          return Card(
            child: ListTile(
              leading: CircleAvatar(
                child: item.urlImage,
              ),
              title: Text(
                item.title,
                style: const TextStyle(fontSize: 28),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios_outlined,
              ),
            ),
          );
        },
      ),
    );
  }
}
