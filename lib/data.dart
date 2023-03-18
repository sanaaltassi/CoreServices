class Data {
  static final items = [
    Item(id: 1, name: "The Training Hall", desc: "Office Type", status: "Available", image:'images/office.jpg'),
    Item(id: 2, name: "The Training Hall", desc: "Office Type", status: "Available", image:'images/office.jpg'),
    Item(id: 3, name: "The Training Hall", desc: "Office Type", status: "Available", image:'images/office.jpg'),
    Item(id: 4, name: "The Training Hall", desc: "Office Type", status: "Available", image:'images/office.jpg'),
  ];
}
class Item {
  final int id;
  final String name;
  final String desc;
  final String status;
  final String image;

  Item({required this.id, required this.name, required this.desc, required this.status,  required this.image});
}