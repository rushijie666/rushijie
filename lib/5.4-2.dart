import 'package:flutter/material.dart';

void main() {
  runApp(const MoodSelectorApp());
}

class MoodSelectorApp extends StatelessWidget {
  const MoodSelectorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MoodPage(),
    );
  }
}

class MoodPage extends StatefulWidget {
  const MoodPage({super.key});

  @override
  State<MoodPage> createState() => _MoodPageState();
}

class _MoodPageState extends State<MoodPage> {
  String moodEmoji = '😊';
  String moodTitle = '기분이 좋아요';

  void changeMood() {
    setState(() {
      moodEmoji = '😔';
      moodTitle = '조금 슬퍼요';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('기분 선택 앱')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(moodEmoji, style: const TextStyle(fontSize: 100)),
            const SizedBox(height: 10),
            Text(moodTitle, style: const TextStyle(fontSize: 28)),
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: changeMood,
              child: const Text('기분 바꾸기'),
            ),
          ],
        ),
      ),
    );
  }
}

