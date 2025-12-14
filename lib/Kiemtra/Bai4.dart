import 'package:flutter/material.dart';

class MyClass extends StatelessWidget {
  const MyClass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(child: myBody()),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add, color: Colors.blue),
      ),
    );
  }

  Widget myBody() {
    return ListView(
      scrollDirection: Axis.vertical,
      children: List.generate(10, (index) => item(index)),
    );
  }

  Widget item(index) {
    List<String> title = [
      "XML và ứng dụng - Nhóm 1",
      "Lập trình ứng dụng các thiết bị di động - Nhóm 2",
      "Lập trình Flutter - Nhóm 3",
      "Lập trình Web - Nhóm 4",
      "Cơ sở dữ liệu - Nhóm 5",
      "Mạng máy tính - Nhóm 6",
      "Hệ điều hành - Nhóm 7",
      "Phân tích thiết kế hệ thống - Nhóm 8",
      "An ninh mạng - Nhóm 9",
      "Trí tuệ nhân tạo - Nhóm 10",
    ];
    List<String> subtitle = [
      "2025-2026.1.TIN4583.001",
      "2025-2026.1.TIN4403.002",
      "2025-2026.1.TIN4243.003",
      "2025-2026.1.TIN4303.004",
      "2025-2026.1.TIN4503.005",
      "2025-2026.1.TIN4603.006",
      "2025-2026.1.TIN4703.007",
      "2025-2026.1.TIN4803.008",
      "2025-2026.1.TIN4903.009",
      "2025-2026.1.TIN4103.010",
    ];
    List<String> siSo = [
      "58 học viên",
      "55 học viên",
      "40 học viên",
      "60 học viên",
      "45 học viên",
      "50 học viên",
      "52 học viên",
      "48 học viên",
      "53 học viên",
      "47 học viên",
    ];
    List<String> images = [
      "https://plus.unsplash.com/premium_photo-1682125773446-259ce64f9dd7?q=80&w=1171&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "https://images.unsplash.com/photo-1497633762265-9d179a990aa6?q=80&w=1173&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "https://images.unsplash.com/photo-1517673132405-a56a62b18caf?q=80&w=1176&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "https://images.unsplash.com/photo-1519682337058-a94d519337bc?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "https://images.unsplash.com/photo-1642775196125-38a9eb496568?q=80&w=1332&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "https://plus.unsplash.com/premium_photo-1664297989345-f4ff2063b212?q=80&w=1098&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "https://images.unsplash.com/photo-1513185041617-8ab03f83d6c5?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "https://images.unsplash.com/photo-1591951425600-d09958978584?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "https://images.unsplash.com/photo-1535905496755-26ae35d0ae54?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "https://plus.unsplash.com/premium_photo-1677187301439-bc2201360443?q=80&w=665&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    ];
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 10),
      padding: const EdgeInsets.all(13),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: NetworkImage(images[index]), // link hình từ mạng
          fit: BoxFit.cover, // căn chỉnh hình (cover, contain, fill...)
        ),
      ),
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title[index],
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Text(subtitle[index], style: TextStyle(color: Colors.white)),
                ],
              ),
              Text(
                siSo[index],
                style: TextStyle(color: Colors.white, fontSize: 13),
              ),
            ],
          ),
          Tooltip(
            message: "Tùy chọn", // ghi chú khi hover/nhấn giữ
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_horiz, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
