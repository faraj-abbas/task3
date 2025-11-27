import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _controller = TextEditingController();
  TextEditingController _copyController = TextEditingController();

  // نسخ النص
  void _copyText() {
    setState(() {
      _copyController.text = _controller.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(height: 20),
            Directionality(
             textDirection: TextDirection.rtl,
              child:TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: 'ادخل النص',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            ),
            const SizedBox(height: 20),
            Directionality(
             textDirection: TextDirection.rtl,
              child:TextField(
              controller: _copyController,
              readOnly: true,
              decoration: InputDecoration(
                labelText: 'النص المدخل',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _copyText,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 219, 127, 57),
              ),
              child: const Text('عرض النص'),
            ),
          ],
        ),
      ),
    );
  }
}
