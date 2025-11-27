import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(12.0),
        children: [
          ListTile(
            title: const Text(
              "الأخبار",
              textAlign: TextAlign.right,
            ),
            leading: const Icon(Icons.arrow_back_ios), // السهم مناسب للعربية
            onTap: () {},
          ),
          ListTile(
            title: const Text(
              "المكتبة",
              textAlign: TextAlign.right,
            ),
            leading: const Icon(Icons.arrow_back_ios),
            onTap: () {},
          ),
          ListTile(
            title: const Text(
              "الأصدقاء",
              textAlign: TextAlign.right,
            ),
            leading: const Icon(Icons.arrow_back_ios),
            onTap: () {},
          ),
          ListTile(
            title: const Text(
              "الفعاليات",
              textAlign: TextAlign.right,
            ),
            leading: const Icon(Icons.arrow_back_ios),
            onTap: () {},
          ),
          ListTile(
            title: const Text(
              "المفضلة",
              textAlign: TextAlign.right,
            ),
            leading: const Icon(Icons.arrow_back_ios),
            onTap: () {},
          ),
          ListTile(
            title: const Text(
              "الإحصائيات",
              textAlign: TextAlign.right,
            ),
            leading: const Icon(Icons.arrow_back_ios),
            onTap: () {},
          ),
          ListTile(
            title: const Text(
              "التقويم",
              textAlign: TextAlign.right,
            ),
            leading: const Icon(Icons.arrow_back_ios),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
