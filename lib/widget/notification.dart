import 'package:dismissible/model/food.dart';
import 'package:flutter/material.dart';

class Notofication extends StatelessWidget {
  const Notofication({
    super.key,
    required this.item,
  });

  final Food item;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          child: item.urlImage,
        ),
        title: Text(item.title),
        subtitle: Text('${item.price}'),
        trailing: const Icon(Icons.arrow_forward_ios_sharp),
      ),
    );
  }
}
