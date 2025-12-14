import 'package:thaydungbt/Kiemtra/Bai1.dart';
import 'package:thaydungbt/Kiemtra/Bai10.dart';
import 'package:thaydungbt/Kiemtra/Bai11.dart';
import 'package:thaydungbt/Kiemtra/Bai2.dart';
import 'package:thaydungbt/Kiemtra/Bai3.dart';
import 'package:thaydungbt/Kiemtra/Bai4.dart';
import 'package:thaydungbt/Kiemtra/Bai5.dart';
import 'package:thaydungbt/Kiemtra/Bai6.dart';
import 'package:thaydungbt/Kiemtra/Bai7.dart';
import 'package:thaydungbt/Kiemtra/Bai8.dart';
import 'package:thaydungbt/Kiemtra/Bai9.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("MENU BÀI TẬP")),
      body: ListView(
        children: [
          _menuItem(context, title: "Bài tập 1: Xin Chào", page: MyHome()),
          _menuItem(context, title: "Bài tập 2: Resort", page: My_Resort()),
          _menuItem(context, title: "Bài tập 3: BuiltLayout", page: MyLayout()),
          _menuItem(context, title: "Bài tập 4: Classroom", page: MyClass()),
          _menuItem(context, title: "Bài tập 5: Chim Cú", page: HomePage()),
          _menuItem(
            context,
            title: "Bài tập 6: Đổi màu",
            page: ChangeColorApp(),
          ),
          _menuItem(context, title: "Bài tập 7: Tăng giảm", page: CounterApp()),
          _menuItem(
            context,
            title: "Bài tập 8: Đếm thời gian",
            page: CountdownApp(),
          ),
          _menuItem(context, title: "Bài tập 9: Đăng ký", page: FormRegister()),
          _menuItem(context, title: "Bài tập 10: Đăng nhập", page: FormLogin()),
           _menuItem(context, title: "Bài tập 11: Báo ", page: NewsListScreen()),
        ],
      ),
    );
  }

  Widget _menuItem(
    BuildContext context, {
    required String title,
    required Widget page,
  }) {
    return Card(
      margin: EdgeInsets.all(10),
      child: ListTile(
        title: Text(title),
        trailing: Icon(Icons.arrow_forward_ios),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) => page));
        },
      ),
    );
  }
}
