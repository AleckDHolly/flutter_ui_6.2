class ShoeInfo {
  String name;
  double price;
  String image;
  bool isLiked;

  ShoeInfo({
    required this.isLiked,
    required this.name,
    required this.price,
    required this.image,
  });
}

List<ShoeInfo> adidas = [
  ShoeInfo(
    isLiked: false,
    name: "adidas",
    price: 99.99,
    image: "images/adidas/beige.jpg",
  ),
  ShoeInfo(
    isLiked: false,
    name: "adidas",
    price: 69.99,
    image: "images/adidas/red.jpg",
  ),
  ShoeInfo(
    isLiked: false,
    name: "adidas",
    price: 89.99,
    image: "images/adidas/white.jpg",
  ),
];

List<ShoeInfo> nike = [
  ShoeInfo(
    isLiked: false,
    name: "nike",
    price: 120.99,
    image: "images/nike/green.jpg",
  ),
  ShoeInfo(
    isLiked: false,
    name: "nike",
    price: 59.97,
    image: "images/nike/orange.jpg",
  ),
  ShoeInfo(
    isLiked: false,
    name: "nike",
    price: 79.99,
    image: "images/nike/pink.jpg",
  ),
  ShoeInfo(
    isLiked: false,
    name: "nike",
    price: 89.97,
    image: "images/nike/red.jpg",
  ),
];

List<ShoeInfo> jordan = [
  ShoeInfo(
    isLiked: false,
    name: "jordan",
    price: 149.99,
    image: "images/jordan/bred.jpg",
  ),
  ShoeInfo(
    isLiked: false,
    name: "jordan",
    price: 209.97,
    image: "images/jordan/orange.jpg",
  ),
  ShoeInfo(
    isLiked: false,
    name: "jordan",
    price: 99.99,
    image: "images/jordan/red_white.jpg",
  ),
  ShoeInfo(
    isLiked: false,
    name: "jordan",
    price: 249.99,
    image: "images/jordan/white.jpg",
  ),
];

List<ShoeInfo> puma = [
  ShoeInfo(
    isLiked: false,
    name: "puma",
    price: 49.99,
    image: "images/puma/black.jpg",
  ),
  ShoeInfo(
    isLiked: false,
    name: "puma",
    price: 69.99,
    image: "images/puma/red.jpg",
  ),
  ShoeInfo(
    isLiked: false,
    name: "puma",
    price: 89.99,
    image: "images/puma/white.jpg",
  ),
];

List<ShoeInfo> converse = [
  ShoeInfo(
    isLiked: false,
    name: "converse",
    price: 69.99,
    image: "images/converse/blue-red.jpg",
  ),
  ShoeInfo(
    isLiked: false,
    name: "converse",
    price: 69.99,
    image: "images/converse/group.jpg",
  ),
  ShoeInfo(
    isLiked: false,
    name: "converse",
    price: 69.99,
    image: "images/converse/white-green.jpg",
  ),
];
