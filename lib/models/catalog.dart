class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}

final products = [
  Item(
    id: "jayvadolkar1",
    name: "iPhone 12 Pro",
    desc: "Apple iPhone 12th Generation",
    price: 999,
    color: "#33505a",
    image:
        "https://d2d22nphq0yz8t.cloudfront.net/88e6cc4b-eaa1-4053-af65-563d88ba8b26/https://media.croma.com/image/upload/v1662424479/Croma%20Assets/Communication/Mobiles/Images/229927_cg7jzk.png/mxw_2048,f_auto",
  )
];
