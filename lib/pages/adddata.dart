import 'package:application_test/model/db.dart';
import 'package:application_test/model/student_model.dart';

import 'package:flutter/material.dart';

class AddDatPage extends StatelessWidget {
  AddDatPage({super.key});
  final nameController = TextEditingController();
  final ageController = TextEditingController();
  final gradeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: nameController,
            decoration: InputDecoration(
              hintText: "Name",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextField(
            controller: ageController,
            decoration: InputDecoration(
              hintText: "age",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            keyboardType: TextInputType.number,
          ),
          const SizedBox(
            height: 20,
          ),
          TextField(
            controller: gradeController,
            decoration: InputDecoration(
              hintText: "Grade",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () {
                print("clicked");
                try {
                  studetList.value.add(
                    Students(
                      name: nameController.text,
                      age: int.parse(ageController.text),
                      grade: gradeController.text,
                      imageurl: "",
                    ),
                  );
                  Navigator.pop(context);
                  print(studetList.value);
                } catch (e) {
                  print(e.toString());
                }
              },
              child: const Text("save"))
        ],
      ),
    );
  }
}
