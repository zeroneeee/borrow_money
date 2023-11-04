class DataDemo {
  String title;
  String description;
  int price;
  List<String> name;

  DataDemo({
    required this.title,
    required this.description,
    required this.price,
    required this.name,
  });

  String get _title => title;
  String get _description => description;
  int get _price => price;
  List<String> get _name => name;
}
