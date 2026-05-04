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
  // 默认显示"普通"状态
  String moodEmoji = '😐';
  String moodTitle = '그냥 보통이에요';
  String moodSubtitle = '천천히 해도 괜찮아요.';

  // 定义4种心情状态
  void selectMood(int moodIndex) {
    setState(() {
      switch (moodIndex) {
        case 0: // 좋음
          moodEmoji = '😊';
          moodTitle = '기분이 좋아요';
          moodSubtitle = '오늘도 기분 좋게 시작해요!';
          break;
        case 1: // 보통
          moodEmoji = '😐';
          moodTitle = '그냥 보통이에요';
          moodSubtitle = '천천히 해도 괜찮아요.';
          break;
        case 2: // 슬픔
          moodEmoji = '😢';
          moodTitle = '조금 슬퍼요';
          moodSubtitle = '힘들 때는 쉬어도 돼요.';
          break;
        case 3: // 화남
          moodEmoji = '😡';
          moodTitle = '조금 화가 나요';
          moodSubtitle = '잠시 숨 고르고 다시 해요.';
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('기분 선택 앱'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 心情表情
            Text(
              moodEmoji,
              style: const TextStyle(fontSize: 100),
            ),
            const SizedBox(height: 20),
            // 心情标题
            Text(
              moodTitle,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 8),
            // 心情副标题
            Text(
              moodSubtitle,
              style: const TextStyle(fontSize: 14, color: Colors.grey),
            ),
            const SizedBox(height: 60),
            // 4个心情按钮
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => selectMood(0),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.all(16),
                    shape: const CircleBorder(),
                  ),
                  child: const Text('😊', style: TextStyle(fontSize: 20)),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () => selectMood(1),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightBlue,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.all(16),
                    shape: const CircleBorder(),
                  ),
                  child: const Text('😐', style: TextStyle(fontSize: 20)),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () => selectMood(2),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.all(16),
                    shape: const CircleBorder(),
                  ),
                  child: const Text('😢', style: TextStyle(fontSize: 20)),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () => selectMood(3),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.all(16),
                    shape: const CircleBorder(),
                  ),
                  child: const Text('😡', style: TextStyle(fontSize: 20)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}