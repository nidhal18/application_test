import 'package:application_test/model/student_model.dart';
import 'package:flutter/material.dart';

ValueNotifier<List<Students>> studetList = ValueNotifier([
  Students(
    name: 'Mathaii',
    age: 70,
    grade: 'A',
    imageurl:
        'https://static.vecteezy.com/system/resources/previews/031/610/037/non_2x/a-of-a-3d-cartoon-little-boy-in-class-world-students-day-images-ai-generative-photo.jpg',
  ),
  Students(
    name: 'Irumban',
    age: 66,
    grade: 'B',
    imageurl:
        'https://images.rawpixel.com/image_png_800/cHJpdmF0ZS9sci9pbWFnZXMvd2Vic2l0ZS8yMDIzLTA4L3Jhd3BpeGVsX29mZmljZV8zMF8zZF9jaGFyYWN0ZXJfaWxsdXN0cmF0aW9uX2NhcnRvb25fb2Zfc3R1ZGVudF8yYWM3MDM3OS1iNWYzLTQ3ZGEtYmQ3My0zNTZhY2I0NDU4ZDgucG5n.png',
  ),
  Students(
      name: 'Paramashivam',
      age: 32,
      grade: 'C',
      imageurl:
          'https://images.rawpixel.com/image_png_800/cHJpdmF0ZS9sci9pbWFnZXMvd2Vic2l0ZS8yMDIzLTA4L3Jhd3BpeGVsX29mZmljZV8zMF8zZF9jaGFyYWN0ZXJfaWxsdXN0cmF0aW9uX2NhcnRvb25fb2Zfc3R1ZGVudF8yYWM3MDM3OS1iNWYzLTQ3ZGEtYmQ3My0zNTZhY2I0NDU4ZDgucG5n.png'),
  Students(
      name: 'Johny',
      age: 45,
      grade: 'D',
      imageurl:
          'https://images.rawpixel.com/image_png_800/cHJpdmF0ZS9sci9pbWFnZXMvd2Vic2l0ZS8yMDIzLTA4L3Jhd3BpeGVsb2ZmaWNlM18zZF9yZW5kZXJfY2hhcmFjdGVyX29mX2FfYmxhY2tfc3R1ZGVudF9jYXJ0b29uX180ZDY5MmRiZi0xOGEwLTQ1MjUtODMyZC05MmFhOWMwYzhjNmMucG5n.png'),
]);
