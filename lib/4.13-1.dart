
void main() {

  const products = ['Laptop', 'Mouse', 'Keyboard']; // 商品列表
  products.forEach((item) {
    int index = products.indexOf(item) + 1;

    print('$index号商品：$item');
  });

}