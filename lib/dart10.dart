void main() {
  // 问题 1: 从 1 开始逐个输出数字，当数字为 5 时结束循环。
  print('--- 问题 1: 从 1 开始逐个输出数字 (直到 5) ---');
  for (int i = 1; ; i++) {
    print(i);
    if (i == 5) {
      break;
    }
  }

  print('\n');

  // 问题 2: 输出 1 到 10 的数字，跳过偶数，只输出奇数。
  print('--- 问题 2: 输出 1 到 10 的奇数 ---');
  for (int i = 1; i <= 10; i++) {
    if (i % 2 == 0) {
      continue;
    }
    print(i);
  }

  print('\n');

  // 问题 3: 从 1 循环到 10，跳过 3 的倍数，当数字为 8 时结束循环。
  print('--- 问题 3: 循环到 8，跳过 3 的倍数 ---');
  for (int i = 1; i <= 10; i++) {
    if (i % 3 == 0) {
      continue;
    }
    if (i == 8) {
      break;
    }
    print(i);
  }
}