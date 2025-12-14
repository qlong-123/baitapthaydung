import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          // Ảnh (có thể đổi sang AssetImage nếu cần)
          Image.network(
            'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
            height: 500,
            width: 200,
          ),

          // Tiêu đề + icon
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                // Cột chứa tiêu đề và subtitle
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Oeschinen Lake Campground',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Kandersteg, Switzerland',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                const Icon(Icons.star, color: Colors.red),
                const Text('41'),
              ],
            ),
          ),

          // 3 nút hành động
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildButton(Icons.call, "CALL"),
              _buildButton(Icons.near_me, "ROUTE"),
              _buildButton(Icons.share, "SHARE"),
            ],
          ),

          // Văn bản mô tả
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Lake Oeschinen lies at the foot of the Blüemlisalp in the '
              'Bernese Alps. Situated 1,578 meters above sea level, it '
              'is one of the larger Alpine Lakes. A gondola ride from '
              'Kandersteg, followed by a half-hour walk through pastures '
              'and pine forest, leads you to the lake, which warms to 20 '
              'degrees Celsius in the summer. Activities enjoyed here include '
              'rowing, and riding the summer toboggan run.',
              softWrap: true,
            ),
          ),
        ],
      ),
    );
  }

  // Hàm build button tái sử dụng
  static Widget _buildButton(IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: Colors.blue),
        const SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}
