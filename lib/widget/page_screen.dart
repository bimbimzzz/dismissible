import 'package:dismissible/data/foodData.dart';
import 'package:dismissible/widget/notification.dart';
import 'package:dismissible/widget/page.dart';
import 'package:flutter/material.dart';

class PageScreenWidget extends StatefulWidget {
  const PageScreenWidget({super.key});

  @override
  State<PageScreenWidget> createState() => _PageScreenState();
}

class _PageScreenState extends State<PageScreenWidget> {
  final daftarMenu = List.of(allFood);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Listview Builder')),
      body: ListView.builder(
        itemCount: daftarMenu.length,
        itemBuilder: (context, index) {
          final item = daftarMenu[index];
          return Dismissible(
              onDismissed: (direction) {
                if (direction == DismissDirection.startToEnd) {
                  setState(() {
                    daftarMenu.removeAt(index);
                  });
                }
              },
              confirmDismiss: (direction) {
                return showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('Confirm Remove ?'),
                      content:
                          const Text('Are you want to sure remove this item ?'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            setState(() {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) {
                                return const PageScreen();
                              }));
                            });
                          },
                          child: const Text('Delete'),
                        ),
                        TextButton(
                          onPressed: () {
                            setState(() {
                              // Navigator.of(context).pop(false);
                            });
                          },
                          child: const Text('Cancel'),
                        ),
                      ],
                    );
                  },
                );
              },
              background: const Icon(Icons.delete),
              key: Key('$item'),
              child: Notofication(
                item: item,
              ));
        },
      ),
    );
  }
}



//Thanks for watching :)
