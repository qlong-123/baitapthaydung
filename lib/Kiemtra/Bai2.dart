import 'package:flutter/material.dart';

class MyLayout extends StatelessWidget {
  const MyLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: myBody(context)));
  }

  Widget myBody(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            header(context),
            const SizedBox(height: 10),
            title(),
            const SizedBox(height: 20),
            searchBox(),
            const SizedBox(height: 25),
            savedPlacesTitle(),
            const SizedBox(height: 12),
            imageGrid(),
          ],
        ),
      ),
    );
  }

  Widget header(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),

        const Spacer(),

        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.notifications_rounded),
        ),
        IconButton(onPressed: () {}, icon: const Icon(Icons.extension_rounded)),
      ],
    );
  }

  Widget title() {
    return RichText(
      text: const TextSpan(
        children: [
          TextSpan(
            text: 'Welcome, \n',
            style: TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          TextSpan(
            text: 'Charlie',
            style: TextStyle(
              fontSize: 34,
              color: Colors.black87,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }

  Widget searchBox() {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.search),
        hintText: "Search",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.blue),
        ),
      ),
    );
  }

  Widget savedPlacesTitle() {
    return Padding(
      padding: const EdgeInsets.only(top: 25),
      child: const Text(
        "Saved Places",
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget imageGrid() {
    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      mainAxisSpacing: 2,
      crossAxisSpacing: 3,
      childAspectRatio: 1.2,
      children: [
        buildImage("images/picture1.jpg"),
        buildImage("images/picture2.jpg"),
        buildImage("images/picture3.jpg"),
        buildImage("images/picture4.jpg"),
      ],
    );
  }

  Widget buildImage(String path) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Image.asset(
          path,
          fit: BoxFit.cover, // QUAN TRỌNG
        ),
      ),
    );
  }
}
