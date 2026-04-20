class Product {
  String name;
  Product(this.name);

  Product.event() : name = "活动商品";

  void displayInfo() {
    print("商品名称: $name");
  }
}
void main() {

  Product product1 = Product("笔记本电脑");
  print("使用普通构造函数创建的对象:");
  product1.displayInfo();

  print("\n");


  Product product2 = Product.event();
  print("使用命名构造函数 Product.event() 创建的对象:");
  product2.displayInfo();
}