import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int count = 0;
  Color getNumberColor() {
    if (count > 0) return Colors.green;
    if (count < 0) return Colors.red;
    return Colors.black;
  }

  void increase() {
    setState(() {
      count++;
    });
  }

  void decrease() {
    setState(() {
      count--;
    });
  }

  void reset() {
    setState(() {
      count = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Icon(Icons.calculate),
            SizedBox(width: 8),
            Text(
              "Ứng dụng Đếm Số",
              style: TextStyle(color: Colors.white), // chữ trắng
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text("Giá trị hiện tại", style: TextStyle(fontSize: 22)),
            const SizedBox(height: 10),
            Text(
              "$count",
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: getNumberColor(),
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: decrease,
                  child: Row(
                    children: const [
                      Icon(Icons.remove),
                      SizedBox(width: 6),
                      Text("Giảm"),
                    ],
                  ),
                ),
                const SizedBox(width: 12),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: reset,
                  child: Row(
                    children: const [
                      Icon(Icons.refresh),
                      SizedBox(width: 6),
                      Text("Đặt lại"),
                    ],
                  ),
                ),
                const SizedBox(width: 12),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: increase,
                  child: Row(
                    children: const [
                      Icon(Icons.add),
                      SizedBox(width: 6),
                      Text("Tăng"),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
