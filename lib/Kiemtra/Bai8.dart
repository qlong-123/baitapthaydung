import 'dart:async';
import 'package:flutter/material.dart';

class CountdownApp extends StatefulWidget {
  const CountdownApp({super.key});

  @override
  State<CountdownApp> createState() => _CountdownAppState();
}

class _CountdownAppState extends State<CountdownApp> {
  TextEditingController inputTime = TextEditingController();
  Timer? timer;
  int seconds = 0;
  String message = "";

  void startCountdown() {
    if (inputTime.text.isEmpty) return;

    seconds = int.parse(inputTime.text);
    message = "";

    timer?.cancel();
    timer = Timer.periodic(const Duration(seconds: 1), (t) {
      setState(() {
        if (seconds > 0) {
          seconds--;
        } else {
          message = "⏰ Hết thời gian!";
          t.cancel();
        }
      });
    });
  }

  void reset() {
    timer?.cancel();
    setState(() {
      seconds = 0;
      message = "";
      inputTime.clear();
    });
  }

  String formatTime(int s) {
    int m = s ~/ 60;
    int ss = s % 60;
    return "${m.toString().padLeft(2, '0')}:${ss.toString().padLeft(2, '0')}";
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Icon(Icons.timer, color: Colors.white),
            SizedBox(width: 8),
            Text("Bộ đếm thời gian", style: TextStyle(color: Colors.white)),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text("Nhập số giây đếm:", style: TextStyle(fontSize: 20)),
            const SizedBox(height: 10),
            SizedBox(
              width: 150,
              child: TextField(
                controller: inputTime,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                decoration: const InputDecoration(border: OutlineInputBorder()),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              formatTime(seconds),
              style: const TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              message,
              style: const TextStyle(fontSize: 18, color: Colors.red),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: startCountdown,
                  child: const Text("Bắt đầu"),
                ),
                const SizedBox(width: 14),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: reset,
                  child: const Text("Reset"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
