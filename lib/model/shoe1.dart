class Shoe {
  String productTittle,  productImage;
  int productPrice;
  Shoe(
      {required this.productTittle,
      required this.productPrice,
      required this.productImage});
}

List<Shoe> products = [
  Shoe(
      productTittle: "Nike Air Max 20",
      productPrice: 250,
      productImage: "assets/shoe1.png"),
  Shoe(
      productTittle: "Excee Sneakers",
      productPrice: 250,
      productImage: "assets/shoe2.png"),
  Shoe(
      productTittle: "Air MAx Motion 2",
      productPrice: 270,
      productImage: "assets/shoe3.png"),
  Shoe(
      productTittle: "Leather Sneakers",
      productPrice: 280,
      productImage: "assets/shoe1.png"),
  Shoe(
      productTittle: "Nike Air Max 20",
      productPrice: 240,
      productImage: "assets/shoe1.png"),
  Shoe(
      productTittle: "Excee Sneakers",
      productPrice: 90,
      productImage: "assets/shoe2.png"),
  Shoe(
      productTittle: "Air MAx Motion 2",
      productPrice: 70,
      productImage: "assets/shoe3.png"),
  Shoe(
      productTittle: "Leather Sneakers",
      productPrice: 9,
      productImage: "assets/shoe1.png")
];
