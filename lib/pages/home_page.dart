import 'package:application_test/model/db.dart';

import 'package:application_test/pages/adddata.dart';

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  String? data;

  HomePage({super.key, this.data});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ValueListenableBuilder(
          valueListenable: studetList,
          builder: (context, value, _) {
            return ListView.builder(
              itemCount: value.length,
              itemBuilder: (context, index) {
                return ListTile(
                  trailing: IconButton(
                    icon: const Icon(Icons.delete, color: Colors.red),
                    onPressed: () {
                      setState(() {
                        studetList.value.removeAt(index);
                      });
                    },
                  ),
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage:
                        NetworkImage(value[index].imageurl.toString()),
                  ),
                  title: Text(value[index].name!),
                  subtitle: Text(
                      'Age: ${value[index].age} Grade: ${value[index].grade}'),
                );
              },
            );
          }),
      floatingActionButton: Row(
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {});
            },
          ),
          FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AddDatPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

// Define the Students model
class Student {
  final String name;
  final int age;
  final String grade;
  final String imageUrl;

  Student(
      {required this.name,
      required this.age,
      required this.grade,
      required this.imageUrl});
}
