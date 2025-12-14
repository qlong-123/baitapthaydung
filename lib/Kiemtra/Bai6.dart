import 'dart:math';
import 'package:flutter/material.dart';

class ChangeColorApp extends StatefulWidget {
  const ChangeColorApp({super.key});

  @override
  State<ChangeColorApp> createState() => _ChangeColorAppState();
}

class _ChangeColorAppState extends State<ChangeColorApp> {
  Color bgColor = Colors.purple;

  List<Color> lscolor = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.orange,
    Colors.purple,
    Colors.yellow,
    Colors.teal,
  ];

  final Map<Color, String> colorNames = {
    Colors.red: "Đỏ",
    Colors.green: "Xanh lá",
    Colors.blue: "Xanh dương",
    Colors.orange: "Cam",
    Colors.purple: "Tím",
    Colors.yellow: "Vàng",
    Colors.teal: "Xanh ngọc",
  };

  void reset() {
    setState(() {
      bgColor = Colors.purple;
    });
  }

  void changeColor() {
    setState(() {
      bgColor = lscolor[Random().nextInt(lscolor.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white60,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: const [
            Icon(Icons.color_lens_rounded),
            Text("Ứng dụng Đổi màu nền"),
          ],
        ),
      ),
      body: Container(
        color: bgColor,
        width: double.infinity,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                "Màu hiện tại",
                style: TextStyle(fontSize: 22, color: Colors.white),
              ),
              const SizedBox(height: 8),
              Text(
                colorNames[bgColor] ?? "",
                style: const TextStyle(fontSize: 18, color: Colors.white),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: changeColor,
                    child: Row(
                      children: const [
                        Icon(Icons.change_circle),
                        SizedBox(width: 6),
                        Text("Đổi màu"),
                      ],
                    ),
                  ),
                  const SizedBox(width: 16),
                  ElevatedButton(
                    onPressed: reset,
                    child: Row(
                      children: const [
                        Icon(Icons.refresh),
                        SizedBox(width: 6),
                        Text("Đặt lại"),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
